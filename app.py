import os
from flask import Flask, render_template, request
import torch
from torchvision import transforms
from PIL import Image
from models import load_deepfake_model, predict_deepfake

# ------------------- Flask App ------------------- #
app = Flask(__name__)

# ------------------- Model Setup ------------------- #
model_path = "best_model.pth"
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model = load_deepfake_model(model_path, device)

# ------------------- Image Transform ------------------- #
transform = transforms.Compose([
    transforms.Resize((299, 299)),  # match EfficientNet input
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5, 0.5, 0.5],
                         std=[0.5, 0.5, 0.5])
])

# ------------------- Routes ------------------- #
@app.route('/')
def index():
    return render_template('index.html')

@app.route("/predict", methods=["POST"])
def predict():
    try:
        if "file" not in request.files:
            return render_template("result.html", label="No file uploaded", confidence=0)

        file = request.files["file"]
        if file.filename == "":
            return render_template("result.html", label="No selected file", confidence=0)

        # Save uploaded file
        upload_folder = os.path.join("static", "uploads")
        os.makedirs(upload_folder, exist_ok=True)
        image_path = os.path.join(upload_folder, file.filename)
        file.save(image_path)

        # Debug print
        print("Uploaded file:", file.filename)
        print("Saved to:", image_path)

        # Open and preprocess image
        image = Image.open(image_path).convert("RGB")
        tensor = transform(image).unsqueeze(0).to(device)

        print("Tensor shape:", tensor.shape)

        # Predict
        try:
            label, confidence = predict_deepfake(model, tensor, device)
            confidence = round(confidence * 100, 2)  # convert to %
        except Exception as e:
            print("Prediction error:", e)
            label, confidence = "Error", 0.0

        return render_template("result.html",
                               label=label,
                               confidence=confidence,
                               uploaded_image=image_path)

    except Exception as e:
        print("Global error:", e)
        return render_template("result.html", label="Error", confidence=0)

# ------------------- Run App ------------------- #
if __name__ == "__main__":
    app.run(debug=True)
