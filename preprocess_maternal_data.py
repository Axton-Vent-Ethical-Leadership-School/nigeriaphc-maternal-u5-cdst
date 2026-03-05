# MaternalU5Triage AI
# Data Preprocessing Script

import pandas as pd
import numpy as np

# ============================
# Load datasets
# ============================

public_health = pd.read_csv("data/public_health/public_health_data.csv")
clinical = pd.read_csv("data/clinical/clinical_data.csv")
genomic = pd.read_csv("data/genomic/genomic_data.csv")

print("Datasets loaded successfully")

# ============================
# Standardize column names
# ============================

public_health.columns = public_health.columns.str.lower().str.strip()
clinical.columns = clinical.columns.str.lower().str.strip()
genomic.columns = genomic.columns.str.lower().str.strip()

# ============================
# Handle missing values
# ============================

public_health.fillna(public_health.median(numeric_only=True), inplace=True)
clinical.fillna(clinical.median(numeric_only=True), inplace=True)
genomic.fillna(genomic.median(numeric_only=True), inplace=True)

# ============================
# Remove duplicate records
# ============================

public_health.drop_duplicates(inplace=True)
clinical.drop_duplicates(inplace=True)
genomic.drop_duplicates(inplace=True)

# ============================
# Merge datasets
# ============================

# Assume common key is patient_id
merged_data = clinical.merge(public_health, on="patient_id", how="left")

merged_data = merged_data.merge(genomic, on="patient_id", how="left")

print("Datasets merged successfully")

# ============================
# Normalize numerical columns
# ============================

numeric_columns = merged_data.select_dtypes(include=[np.number]).columns

for col in numeric_columns:
    merged_data[col] = (merged_data[col] - merged_data[col].mean()) / merged_data[col].std()

# ============================
# Save processed dataset
# ============================

merged_data.to_csv("data/processed/maternal_u5_processed.csv", index=False)

print("Preprocessing complete")
print("Processed dataset saved to data/processed/")
