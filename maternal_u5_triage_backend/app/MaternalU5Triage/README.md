# MaternalU5Triage AI-Enabled Clinical Decision Support Tool

## Overview
MaternalU5Triage is an AI-enabled clinical decision-support system designed to assist primary care triage and referral optimization for maternal and under-five health in rural Nigeria. 

The project is aligned with the grant titled:  
**"Evaluating an AI-Enabled Clinical Decision Support Tool for Primary Care Triage and Referral Optimization in Rural Nigeria"** and focuses on **early-stage validation (Pathway A)**.  

This repository contains all backend and frontend code, documentation, and supporting materials needed for simulation-based evaluation and prototype testing.

---

## Repository Structure
MaternalU5Triage/
│
├── maternal_u5_triage_backend/ # Backend server code
│ └── app/
│ ├── main.py
│ ├── models.py
│ ├── maternal_routes.py
│ ├── under5_routes.py
│ ├── ai_model.py
│ └── database.py
│ └── README.md # Backend module documentation
│
├── android_app/ # Android Studio project (frontend)
│ └── (all Android app files)
│
├── docs/ # Documentation and supporting materials
│ ├── maternal_module.md
│ ├── under5_module.md
│ ├── Project_Timeline.pdf
│ ├── MaternalU5Triage_AI_Validation.pdf
│ └── letters_of_support.pdf
│
└── README.md # Main project overview (this file)
---

## Components

### Backend
- **Language/Framework:** Python (Flask/FastAPI)  
- **Purpose:** Handles AI decision logic, data models, API routes, and database interactions  
- **Modules:**  
  - `main.py` – Server entry point  
  - `models.py` – Data structures for maternal and under-five encounters  
  - `maternal_routes.py` / `under5_routes.py` – API endpoints  
  - `ai_model.py` – AI decision-support logic  
  - `database.py` – Database connections and data storage  

### Frontend
- **Platform:** Android Studio  
- **Purpose:** Collects patient encounter data and interacts with backend API  
- **Folder:** `android_app/`  

### Documentation
- **Folder:** `docs/`  
- **Contents:**  
  - Maternal and under-five module documentation (`*.md`)  
  - Project timeline and Gantt chart (`Project_Timeline.pdf`)  
  - AI validation data (`MaternalU5Triage_AI_Validation.pdf`)  
  - Letters of support for clinical and technical partners  

---

## Key Features
- Early-stage validation (Pathway A) with simulation-based testing  
- AI-enabled triage for maternal and under-five patients  
- Structured backend with modular architecture  
- Anonymized data handling and ethical compliance  
- Clear separation of backend and frontend  
- Designed for future evaluation, scale-up, and ethical approval  

---

## Getting Started

1. Clone the repository:

```bash
git clone https://github.com/<your-org>/MaternalU5Triage.git
## Contact
**Axton-Vent Initiatives For Ethics And Moral Values And Building Families LTD/GTE** 
Email: socialvalues.org@gmail.com
