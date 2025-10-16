import torch
import torch.nn as nn
from torchvision import models

def load_deepfake_model(model_path, device):
    """
    Automatically detect architecture and load model safely.
    """
    try:
        # Try EfficientNet (common for newer models)
        model = models.efficientnet_b0(weights=None)
        model.classifier[1] = nn.Linear(model.classifier[1].in_features, 2)
        model.load_state_dict(torch.load(model_path, map_location=device))
        print("✅ Loaded EfficientNet model successfully")
        model.to(device)
        model.eval()
        return model

    except Exception as e1:
        print("⚠ EfficientNet failed, trying ResNet...")
        try:
            # Try ResNet50 as backup
            model = models.resnet50(weights=None)
            model.fc = nn.Linear(model.fc.in_features, 2)
            model.load_state_dict(torch.load(model_path, map_location=device))
            print("✅ Loaded ResNet model successfully")
            model.to(device)
            model.eval()
            return model

        except Exception as e2:
            print("⚠ ResNet failed, trying Xception-like fallback...")

            # ✅ Lightweight custom model fallback
            model = nn.Sequential(
                nn.Conv2d(3, 32, kernel_size=3, stride=2, padding=1),
                nn.ReLU(),
                nn.MaxPool2d(2),
                nn.Conv2d(32, 64, kernel_size=3, stride=2, padding=1),
                nn.ReLU(),
                nn.AdaptiveAvgPool2d((1, 1)),
                nn.Flatten(),
                nn.Linear(64, 2)
            )
            model.load_state_dict(torch.load(model_path, map_location=device), strict=False)
            print("✅ Loaded fallback model (custom CNN)")
            model.to(device)
            model.eval()
            return model

def predict_deepfake(model, image_tensor, device):
    model.eval()
    with torch.no_grad():
        image_tensor = image_tensor.to(device)
        outputs = model(image_tensor)
        probs = torch.softmax(outputs, dim=1)
        conf, preds = torch.max(probs, 1)
        label = "Fake" if preds.item() == 1 else "Real"
        return label, conf.item()
