from flask import Flask, render_template, request, redirect, url_for
import torch
from torchvision import transforms
from PIL import Image
from models import load_deepfake_model, predict_deepfake  # only necessary functions
import os

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model_path = "deepfake_model.pth"

# Load model
model = load_deepfake_model(model_path, device)

# Image preprocessing
preprocess = transforms.Compose([
    transforms.Resize((299, 299)),
    transforms.ToTensor(),
    transforms.Normalize([0.5, 0.5, 0.5], [0.5, 0.5, 0.5])
])

UPLOAD_FOLDER = "uploads"
os.makedirs(UPLOAD_FOLDER, exist_ok=True)
app = Flask(__name__)
app.config["UPLOAD_FOLDER"] = UPLOAD_FOLDER

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/predict", methods=["POST"])
def predict():
    if "file" not in request.files:
        return redirect(request.url)

    file = request.files["file"]
    if file.filename == "":
        return redirect(request.url)

    filepath = os.path.join(app.config["UPLOAD_FOLDER"], file.filename)
    file.save(filepath)

    # Only process images
    if file.filename.lower().endswith(('jpg','jpeg','png')):
        image = Image.open(filepath).convert("RGB")
        tensor = preprocess(image).unsqueeze(0)
        label, confidence = predict_deepfake(model, tensor, device)
    else:
        label, confidence = "Unsupported file", 0

    return render_template("result.html", label=label, confidence=round(confidence*100, 2), filename=file.filename)

@app.route("/uploads/<filename>")
def uploaded_file(filename):
    return redirect(url_for("static", filename="uploads/" + filename), code=301)

if __name__ == "__main__":
    app.run(debug=True)
