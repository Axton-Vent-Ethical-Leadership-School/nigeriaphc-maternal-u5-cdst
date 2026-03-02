# MATERNAL TRIAGE MODULE – Variable Dictionary v1.0

## Objective
Predict:
1. Emergency referral requirement
2. Severe complication probability

---

## Demographics
- Age (Years) – Integer – Required
- Gravidity – Integer – Required
- Parity – Integer – Required
- Gestational Age (Weeks) – Float – Optional
- Postpartum Status – Boolean – Required
- Days Since Delivery – Integer – Optional

---

## Vital Signs
- Systolic BP (mmHg) – Float – Required
- Diastolic BP (mmHg) – Float – Required
- Heart Rate (bpm) – Float – Required
- Respiratory Rate (breaths/min) – Float – Required
- Temperature (°C) – Float – Required
- Oxygen Saturation (%) – Float – Optional

---

## Hard-Coded Override Rules
Immediate RED if:
- Convulsions
- Unconsciousness
- Severe hemorrhage
- O2 saturation < 90%
- Shock signs (SBP < 90 + tachycardia)

---

## Output
- Emergency Referral Probability
- Severe Complication Probability
- Triage Category (RED / YELLOW / GREEN)
