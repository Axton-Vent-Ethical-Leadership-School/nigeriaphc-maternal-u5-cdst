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

