import pandas as pd
from sklearn.metrics import accuracy_score
import joblib

# Load trained model
model = joblib.load("models/maternal_u5_rf_model.pkl")

# Load evaluation dataset
data = pd.read_csv("data/maternal_processed_data.csv")

# Example demographic grouping
age_groups = data.groupby("maternal_age")

results = []

for age, group in age_groups:

    X = group.drop(columns=["outcome"])
    y = group["outcome"]

    predictions = model.predict(X)

    accuracy = accuracy_score(y, predictions)

    results.append((age, accuracy))

print("Bias Evaluation Across Maternal Age Groups")

for age, acc in results:
    print(f"Age: {age}, Accuracy: {acc}")
