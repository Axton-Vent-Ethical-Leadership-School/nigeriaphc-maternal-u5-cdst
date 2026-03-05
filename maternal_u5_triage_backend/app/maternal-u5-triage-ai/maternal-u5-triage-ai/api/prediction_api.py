from flask import Flask, request, jsonify
from agents.triage_agent import triage_patient

app = Flask(__name__)

@app.route("/predict", methods=["POST"])
def predict():

    data = request.json

    patient_features = data["features"]

    prediction = triage_patient(patient_features)

    return jsonify(prediction)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
