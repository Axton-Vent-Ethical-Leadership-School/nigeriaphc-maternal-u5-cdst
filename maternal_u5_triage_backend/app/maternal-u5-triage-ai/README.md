## 5. Integration of AI Agents

The MaternalU5Triage system integrates agentic AI components that enable real-time risk monitoring, triage decision support, and clinical explainability.

### Real-Time Risk Triage

AI agents continuously analyze incoming maternal and under-five patient data streams, including:

• Demographic data (maternal age, parity)
• Clinical history (hypertension, diabetes, anemia)
• Birth complications
• Nutrition status
• Environmental risk indicators

The deployed predictive model generates a risk probability score for each patient encounter.

When the risk score exceeds predefined thresholds, the AI triage agent automatically flags the case as:

LOW RISK  
MODERATE RISK  
HIGH RISK  
CRITICAL

High-risk cases are prioritized for clinician review or emergency referral.

### Agentic Decision Support

The AI triage agents operate as automated clinical assistants that:

• Monitor patient data streams
• Trigger alerts for high-risk conditions
• Provide early warning for maternal complications
• Suggest triage priority levels
• Support frontline health workers in resource-limited settings

### Explainable AI Guidance

To ensure transparency and clinician trust, the system integrates explainable AI techniques.

Explainability components provide:

• Feature importance rankings
• Key contributing risk factors
• Interpretable risk explanations
• Visual decision summaries

For example:

"High maternal risk predicted due to advanced maternal age, hypertension history, and low hemoglobin levels."

These explanations help clinicians understand the model's reasoning before making care decisions.

### Impact

The AI-agent triage system enables:

• Earlier detection of maternal complications
• Reduced under-five mortality risks
• Faster triage decisions in low-resource facilities
• Scalable AI-assisted maternal care
## Deployment & AI Agents

The trained MaternalU5Triage model is deployed to cloud infrastructure to support real-time predictions and AI-assisted clinical decision making.

### Vertex AI Endpoint Deployment

The trained Random Forest model is deployed to Google Cloud Vertex AI as a scalable prediction endpoint.

This enables:

• Real-time maternal risk scoring
• Secure API access
• Integration with mobile health applications
• Scalable prediction services

### Cloud Run Prediction API

A lightweight API service is deployed using Google Cloud Run to expose the model to external applications such as:

• MaternalU5Triage Android App
• Hospital dashboards
• Community health worker tools

The API receives patient data and returns risk predictions instantly.

Example workflow:

1. Health worker submits maternal patient data
2. API sends data to deployed AI model
3. Model calculates risk probability
4. AI agent assigns triage level
5. Results returned to mobile app

### AI Agent Workflow

AI agents operate on top of the deployed prediction service.

Agent responsibilities include:

• Monitoring prediction outputs
• Classifying triage priority levels
• Generating explainable risk summaries
• Triggering alerts for critical cases

This architecture enables the MaternalU5Triage system to function as a real-time AI-powered maternal health triage assistant.
## 5. Integration of AI Agents

The MaternalU5Triage system integrates agentic AI components that enable real-time risk monitoring, triage decision support, and clinical explainability.

### Real-Time Risk Triage

AI agents continuously analyze incoming maternal and under-five patient data streams, including:

• Demographic data (maternal age, parity)
• Clinical history (hypertension, diabetes, anemia)
• Birth complications
• Nutrition status
• Environmental risk indicators

The deployed predictive model generates a risk probability score for each patient encounter.

When the risk score exceeds predefined thresholds, the AI triage agent automatically flags the case as:

LOW RISK  
MODERATE RISK  
HIGH RISK  
CRITICAL

High-risk cases are prioritized for clinician review or emergency referral.

### Agentic Decision Support

The AI triage agents operate as automated clinical assistants that:

• Monitor patient data streams
• Trigger alerts for high-risk conditions
• Provide early warning for maternal complications
• Suggest triage priority levels
• Support frontline health workers in resource-limited settings

### Explainable AI Guidance

To ensure transparency and clinician trust, the system integrates explainable AI techniques.

Explainability components provide:

• Feature importance rankings
• Key contributing risk factors
• Interpretable risk explanations
• Visual decision summaries

For example:

"High maternal risk predicted due to advanced maternal age, hypertension history, and low hemoglobin levels."

These explanations help clinicians understand the model's reasoning before making care decisions.

### Impact

The AI-agent triage system enables:

• Earlier detection of maternal complications
• Reduced under-five mortality risks
• Faster triage decisions in low-resource facilities
• Scalable AI-assisted maternal care
## Deployment & AI Agents

The trained MaternalU5Triage model is deployed to cloud infrastructure to support real-time predictions and AI-assisted clinical decision making.

### Vertex AI Endpoint Deployment

The trained Random Forest model is deployed to Google Cloud Vertex AI as a scalable prediction endpoint.

This enables:

• Real-time maternal risk scoring
• Secure API access
• Integration with mobile health applications
• Scalable prediction services

### Cloud Run Prediction API

A lightweight API service is deployed using Google Cloud Run to expose the model to external applications such as:

• MaternalU5Triage Android App
• Hospital dashboards
• Community health worker tools

The API receives patient data and returns risk predictions instantly.

Example workflow:

1. Health worker submits maternal patient data
2. API sends data to deployed AI model
3. Model calculates risk probability
4. AI agent assigns triage level
5. Results returned to mobile app

### AI Agent Workflow

AI agents operate on top of the deployed prediction service.

Agent responsibilities include:

• Monitoring prediction outputs
• Classifying triage priority levels
• Generating explainable risk summaries
• Triggering alerts for critical cases
MaternalU5Triage AI System Workflow
┌─────────────────────┐
│ 1. Data Collection  │
│                     │
│ • Public Health     │
│   (WHO, UNICEF)     │
│ • Clinical Data     │
│   (Anonymized EHRs) │
│ • Genomic Data      │
│   (Open datasets)   │
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 2. Cloud Storage    │
│    Organization     │
│                     │
│ Bucket: maternal-   │
│ u5triage-data       │
│ ├─ public_health/   │
│ ├─ clinical/        │
│ ├─ genomic/         │
│ └─ processed/       │
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 3. Data Preprocessing│
│                     │
│ • Clean missing data │
│ • Standardize formats│
│ • Anonymize sensitive│
│   info               │
│ • Merge datasets     │
└─────────┬───────────┘
          │
          ▼
┌───────────────────────────┐
│ 4. Feature Engineering    │
│                           │
│ • Encode categorical vars │
│ • Normalize numeric vars  │
│ • Create predictive vars  │
│ • Combine datasets into   │
│   master AI-ready dataset │
└─────────┬─────────────────┘
          │
          ▼
┌───────────────────────────┐
│ 5. AI Model Training      │
│                           │
│ • Split data (train/val/test) │
│ • Train predictive model      │
│   - Random Forest             │
│   - Option: XGBoost / Neural │
│ • Evaluate: Accuracy, AUC,   │
│   Precision, Recall           │
└─────────┬─────────────────┘
          │
          ▼
┌───────────────────────────┐
│ 6. Model Storage & Cloud  │
│                           │
│ • Save trained model       │
│   (Cloud Storage: models/) │
│ • Versioning for updates   │
└─────────┬─────────────────┘
          │
          ▼
┌───────────────────────────┐
│ 7. Deployment / AI Agents │
│                           │
│ • Deploy with Vertex AI   │
│   or Cloud Run            │
│ • API endpoints for       │
│   Maternal/U5 risk alerts │
│ • Integration with app    │
└─────────┬─────────────────┘
          │
          ▼
┌───────────────────────────┐
│ 8. Predictions & Alerts   │
│                           │
│ • Input: new patient data │
│ • Output: risk scores /    │
│   early warning alerts     │
│ • Clinician dashboard      │
└───────────────────────────┘
This architecture enables the MaternalU5Triage system to function as a real-time AI-powered maternal health triage assistant.


