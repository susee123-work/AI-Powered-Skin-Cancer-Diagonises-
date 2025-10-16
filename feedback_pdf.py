import csv
import os

def save_feedback(filename, diagnosis, confidence, remark):
    os.makedirs("logs", exist_ok=True)
    log_path = os.path.join("logs", "predictions.csv")
    header = ["filename", "diagnosis", "confidence", "remark"]
    
    # write header if file doesn't exist
    if not os.path.exists(log_path):
        with open(log_path, "w", newline="") as f:
            writer = csv.writer(f)
            writer.writerow(header)
    
    # append row
    with open(log_path, "a", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([filename, diagnosis, confidence, remark])

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from datetime import datetime

def generate_pdf_report(path, filename, label, confidence):
    c = canvas.Canvas(path, pagesize=A4)
    width, height = A4
    c.setFont("Helvetica-Bold", 22)
    c.drawCentredString(width/2, height-50, "DeepFake Detection Report")
    c.setFont("Helvetica", 14)
    c.drawString(50, height-100, f"File: {filename}")
    c.drawString(50, height-120, f"Prediction: {label}")
    c.drawString(50, height-140, f"Confidence: {confidence:.2f}%")
    c.drawString(50, height-160, f"Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    c.save()
