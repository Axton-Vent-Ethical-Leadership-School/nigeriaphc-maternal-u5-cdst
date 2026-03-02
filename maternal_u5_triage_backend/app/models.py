This file defines the data models used by the MaternalU5Triage backend application.

The models structure how maternal and under-five triage encounter data are represented within the system. They define standardized fields for symptom inputs, clinical indicators, risk classification outputs, and referral recommendations.

The purpose of these models is to:
- Ensure consistent and structured data capture
- Support algorithm transparency and reproducibility
- Enable evaluation of triage accuracy and referral optimization
- Facilitate future cost-effectiveness and performance analysis

Separate data models are defined for:
- Maternal triage cases
- Under-five pediatric triage cases
- AI-generated risk assessment outputs

The schema is designed to support the project titled:
"Evaluating an AI-Enabled Clinical Decision Support Tool for Primary Care Triage and Referral Optimization in Rural Nigeria."

This implementation supports early-stage validation and simulation-based testing under Pathway A. All prototype models exclude patient-identifiable fields and prioritize anonymized data structures in preparation for future ethical approval and regulatory compliance prior to field deployment.
