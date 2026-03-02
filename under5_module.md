# UNDER-5 TRIAGE MODULE – Variable Dictionary v1.0

## Objective
Predict severe illness probability and triage category.

---

## Demographics
- Age (Months) – Integer – Required
- Weight (kg) – Float – Required
- MUAC (cm) – Float – Optional
- Immunization Status – Boolean – Required

---

## Vital Signs
- Temperature (°C) – Float – Required
- Respiratory Rate – Float – Required
- Heart Rate – Float – Required
- Oxygen Saturation (%) – Float – Optional

---

## Hard-Coded Override Rules
Immediate RED if:
- Convulsions
- Unconscious
- O2 saturation < 90%
- Shock signs
- Severe malnutrition with complications

---

## Output
- Severe Illness Probability
- Triage Category (RED / YELLOW / GREEN)
