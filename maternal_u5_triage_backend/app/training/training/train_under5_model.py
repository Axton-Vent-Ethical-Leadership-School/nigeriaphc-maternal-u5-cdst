import pandas as pd
import joblib

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import GradientBoostingClassifier
from sklearn.pipeline import Pipeline
from sklearn.metrics import classification_report, roc_auc_score


# ----------------------------------------
# Load Dataset
# ----------------------------------------

data = pd.read_csv("data/under5_triage_dataset.csv")


# ----------------------------------------
# Define Target
# ----------------------------------------

target = "severe_illness"

X = data.drop(columns=[target])
y = data[target]


# ----------------------------------------
# Train/Test Split
# ----------------------------------------

X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.2,
    random_state=42,
    stratify=y
)


# ----------------------------------------
# Model Pipeline
# ----------------------------------------

pipeline = Pipeline([
    ("scaler", StandardScaler()),
    ("model", GradientBoostingClassifier())
])


# ----------------------------------------
# Train Model
# ----------------------------------------

pipeline.fit(X_train, y_train)


# ----------------------------------------
# Evaluate Model
# ----------------------------------------

predictions = pipeline.predict(X_test)
probabilities = pipeline.predict_proba(X_test)[:,1]

print(classification_report(y_test, predictions))
print("ROC-AUC:", roc_auc_score(y_test, probabilities))


# ----------------------------------------
# Save Model
# ----------------------------------------

joblib.dump(pipeline, "models/under5_model.pkl")

print("Under-5 model saved to models/under5_model.pkl")
