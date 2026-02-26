# Maternal & Under-5 Triage CDST — Frontend Specification

**Purpose:**  
This document describes the design and functional specifications for the Android tablet application for maternal and under-5 triage in primary health care settings.

---

## 1. App Overview

- Platform: Android tablet (10-inch recommended)  
- Stack: Kotlin + Jetpack Compose  
- Offline capability: Local Room database with sync when connection is available  
- Users: PHC health workers  
- Primary function: Structured triage and AI-guided recommendations with explainable outputs

---

## 2. Screen Flow

1. **Home Screen**  
   - Logo and app title  
   - Buttons: "Start New Assessment", "View Past Assessments"

2. **Patient Type Selection**  
   - Two large cards: Maternal 👩 / Under-5 👶  

3. **Patient Details Screen**  
   - **Maternal:** Age, Gravidity, Parity, Gestational age, Postpartum toggle, Days since delivery if postpartum  
   - **Under-5:** Age (months), Weight, MUAC, Immunization status toggle  

4. **Vitals Entry Screen**  
   - Systolic & Diastolic BP, Heart rate, Respiratory rate, Temperature, Oxygen saturation (optional)  

5. **Symptoms & Danger Signs Screen**  
   - Maternal: Antepartum symptoms, Preeclampsia, Hemorrhage, Sepsis  
   - Under-5: Fever, Respiratory symptoms, Diarrhea/Dehydration, Malnutrition  
   - Input type: Checkbox toggles  

6. **Generate Recommendation**  
   - Full-width button: “Generate Recommendation”  
   - Calls backend API, shows loading spinner  

7. **Result + AI Explanation Screen**  
   - Color-coded banner (Red = urgent referral, Yellow = monitor, Green = manage at PHC)  
   - Risk probability (e.g., 78%)  
   - Top 3 contributing factors from AI model  
   - Action guidance bullets  
   - “Override Recommendation” button with reason logging

---

## 3. JSON Structure

**Request Example:**

```json
{
  "patient_type": "maternal",
  "age": 29,
  "gravidity": 3,
  "parity": 2,
  "gestational_age": 34,
  "postpartum": false,
  "vitals": {
    "sbp": 170,
    "dbp": 110,
    "temperature": 38.2,
    "heart_rate": 110,
    "resp_rate": 24,
    "spo2": 96
  },
  "symptoms": {
    "severe_headache": true,
    "visual_disturbance": true,
    "vaginal_bleeding": false
  }
}
