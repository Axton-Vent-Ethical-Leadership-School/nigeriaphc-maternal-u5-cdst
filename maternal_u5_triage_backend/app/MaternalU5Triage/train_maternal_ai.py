# MaternalU5Triage AI
# Model Training Script

import pandas as pd
import numpy as np
import joblib

from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report

# ============================
# Load processed dataset
# ============================

data = pd.read_csv("data/processed/maternal_u5_processed.csv")

print("Processed dataset loaded successfully")

# ============================
# Define target variable
# ============================

# Example: predicting high maternal/child risk
target = "risk_outcome"

if target not in data.columns:
    print("Warning: 'risk_outcome' column not found. Creating dummy target.")
    data["risk_outcome"] = np.random.randint(0,2,size=len(data))

# ============================
# Separate features and target
# ============================

X = data.drop(columns=[target])
y = data[target]

# ============================
# Train/Test Split
# ============================

X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.2,
    random_state=42
)

print("Dataset split into training and testing")

# ============================
# Train Random Forest Model
# ============================

model = RandomForestClassifier(
    n_estimators=200,
    max_depth=10,
    random_state=42
)

model.fit(X_train, y_train)

print("Model training completed")

# ============================
# Evaluate Model
# ============================

predictions = model.predict(X_test)

accuracy = accuracy_score(y_test, predictions)

print("Model Accuracy:", accuracy)

print("Classification Report:")
print(classification_report(y_test, predictions))

# ============================
# Save trained model
# ============================

joblib.dump(model, "models/maternal_u5_rf_model.pkl")

print("Trained model saved to models/maternal_u5_rf_model.pkl")
