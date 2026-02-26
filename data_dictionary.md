# Maternal & Under-5 Triage CDST — Data Dictionary

## Maternal Module

**Outputs:** RED, YELLOW, GREEN  

**Demographics:**  
- Age (years)  
- Gravidity (numeric)  
- Parity (numeric)  
- Gestational age (weeks)  
- Postpartum (Yes/No)  
- Days since delivery (numeric if postpartum)

**Vitals:**  
- Systolic BP, Diastolic BP  
- Heart rate, Respiratory rate  
- Temperature, Oxygen saturation (optional)

**Danger Signs / Risk Indicators:**  
- Antepartum: Severe headache, Visual disturbance, Vaginal bleeding, Reduced fetal movement, Severe abdominal pain, Convulsions, Swelling  
- Postpartum Hemorrhage: Heavy bleeding, Dizziness/fainting, Uterine atony, Retained placenta, Previous PPH  
- Preeclampsia: BP ≥140/90, Severe BP ≥160/110, Proteinuria, Headache, Visual changes, RUQ pain  
- Sepsis: Fever ≥38°C, Foul-smelling discharge, Abdominal tenderness, Tachycardia, Hypotension

---

## Under-5 Module

**Outputs:** RED, YELLOW, GREEN  

**Demographics:**  
- Age (months), Weight (kg), MUAC (cm)  
- Immunization up to date? (Yes/No)

**Vitals:** Temperature, Heart rate, Respiratory rate, O2 sat (optional)  

**Symptoms / Danger Signs:**  
- Fever: Duration, Convulsions, Lethargy, Neck stiffness, Unable to drink  
- Fast breathing: Chest indrawing, Stridor, Grunting, Nasal flaring, O2 sat <92%  
- Diarrhea/Dehydration: Duration, Blood in stool, Sunken eyes, Skin pinch, Vomiting  
- Malnutrition: MUAC <11.5 cm, Bilateral edema, Severe wasting

**Notes:**  
- Binary = true/false, Continuous = numeric  
- Outcome labels defined for AI model  
- Safety overrides must trigger RED
