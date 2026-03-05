import joblib
import numpy as np

# Load trained model
model = joblib.load("models/maternal_u5_rf_model.pkl")

def classify_risk(probability):
    if probability < 0.25:
        return "LOW RISK"
    elif probability < 0.50:
        return "MODERATE RISK"
    elif probability < 0.75:
        return "HIGH RISK"
    else:
        return "CRITICAL"


def triage_patient(patient_features):
    
    # Convert to numpy array
    features = np.array(patient_features).reshape(1, -1)

    # Predict risk probability
    risk_probability = model.predict_proba(features)[0][1]

    # Assign triage category
    triage_level = classify_risk(risk_probability)

    return {
        "risk_probability": float(risk_probability),
        "triage_level": triage_level
    }


if __name__ == "__main__":

    example_patient = [
        38,  # maternal age
        1,   # hypertension
        0,   # diabetes
        1,   # anemia
        0,   # birth complication
        2.5  # nutrition score
    ]

    result = triage_patient(example_patient)

    print("Risk Probability:", result["risk_probability"])
    print("Triage Level:", result["triage_level"])
