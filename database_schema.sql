-- MATERNAL TABLE
CREATE TABLE maternal_cases (
    case_id SERIAL PRIMARY KEY,
    patient_id VARCHAR(50) NOT NULL,
    facility_id VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    gravidity INTEGER NOT NULL,
    parity INTEGER NOT NULL,
    gestational_age_weeks REAL,
    postpartum BOOLEAN NOT NULL,
    days_since_delivery INTEGER,
    systolic_bp REAL NOT NULL,
    diastolic_bp REAL NOT NULL,
    heart_rate REAL NOT NULL,
    respiratory_rate REAL NOT NULL,
    temperature REAL NOT NULL,
    oxygen_saturation REAL,
    emergency_referral_probability REAL,
    severe_complication_probability REAL,
    triage_category VARCHAR(10),
    override_triggered BOOLEAN DEFAULT FALSE,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- UNDER-5 TABLE
CREATE TABLE under5_cases (
    case_id SERIAL PRIMARY KEY,
    patient_id VARCHAR(50) NOT NULL,
    facility_id VARCHAR(50) NOT NULL,
    age_months INTEGER NOT NULL,
    weight REAL NOT NULL,
    muac REAL,
    immunization_up_to_date BOOLEAN NOT NULL,
    temperature REAL NOT NULL,
    respiratory_rate REAL NOT NULL,
    heart_rate REAL NOT NULL,
    oxygen_saturation REAL,
    severe_illness_probability REAL,
    triage_category VARCHAR(10),
    override_triggered BOOLEAN DEFAULT FALSE,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- =========================================================
-- MATERNAL CASES TABLE
-- Stores maternal triage input data and AI predictions
-- =========================================================

CREATE TABLE maternal_cases (
    case_id SERIAL PRIMARY KEY,
    patient_id VARCHAR(50) NOT NULL,
    facility_id VARCHAR(50) NOT NULL,

    -- Demographics
    age INTEGER NOT NULL,
    gravidity INTEGER NOT NULL,
    parity INTEGER NOT NULL,
    gestational_age_weeks REAL,
    postpartum BOOLEAN NOT NULL,
    days_since_delivery INTEGER,

    -- Vital Signs
    systolic_bp REAL NOT NULL,
    diastolic_bp REAL NOT NULL,
    heart_rate REAL NOT NULL,
    respiratory_rate REAL NOT NULL,
    temperature REAL NOT NULL,
    oxygen_saturation REAL,

    -- Antepartum Danger Symptoms
    severe_headache BOOLEAN NOT NULL,
    visual_disturbance BOOLEAN NOT NULL,
    epigastric_rupq_pain BOOLEAN NOT NULL,
    vaginal_bleeding BOOLEAN NOT NULL,
    reduced_fetal_movement BOOLEAN NOT NULL,
    severe_abdominal_pain BOOLEAN NOT NULL,
    convulsions BOOLEAN NOT NULL,
    swelling_face_hands BOOLEAN NOT NULL,

    -- Postpartum Hemorrhage Indicators
    heavy_vaginal_bleeding BOOLEAN NOT NULL,
    dizziness_fainting BOOLEAN NOT NULL,
    suspected_uterine_atony BOOLEAN NOT NULL,
    retained_placenta_history BOOLEAN NOT NULL,
    previous_pph_history BOOLEAN NOT NULL,

    -- Preeclampsia Indicators
    proteinuria BOOLEAN,
    severe_bp BOOLEAN,

    -- Sepsis Indicators
    foul_smelling_discharge BOOLEAN NOT NULL,
    lower_abdominal_tenderness BOOLEAN NOT NULL,
    tachycardia BOOLEAN,
    hypotension BOOLEAN,

    -- Comorbidities
    previous_c_section BOOLEAN,
    multiple_pregnancy BOOLEAN,
    known_hypertension BOOLEAN,
    known_diabetes BOOLEAN,
    hiv_positive BOOLEAN,

    -- AI Model Outputs
    emergency_referral_probability REAL,
    severe_complication_probability REAL,
    triage_category VARCHAR(10),
    override_triggered BOOLEAN DEFAULT FALSE,

    -- Audit Fields
    clinician_override BOOLEAN DEFAULT FALSE,
    model_version VARCHAR(20),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- =========================================================
-- UNDER-5 CASES TABLE
-- Stores child triage data and AI predictions
-- =========================================================

CREATE TABLE under5_cases (
    case_id SERIAL PRIMARY KEY,
    patient_id VARCHAR(50) NOT NULL,
    facility_id VARCHAR(50) NOT NULL,

    -- Demographics
    age_months INTEGER NOT NULL,
    weight REAL NOT NULL,
    muac REAL,
    immunization_up_to_date BOOLEAN NOT NULL,

    -- Vital Signs
    temperature REAL NOT NULL,
    respiratory_rate REAL NOT NULL,
    heart_rate REAL NOT NULL,
    oxygen_saturation REAL,

    -- Fever Module
    fever_duration_days REAL NOT NULL,
    convulsions BOOLEAN NOT NULL,
    lethargy_unconscious BOOLEAN NOT NULL,
    neck_stiffness BOOLEAN,
    unable_to_drink BOOLEAN NOT NULL,

    -- Pneumonia Indicators
    chest_indrawing BOOLEAN NOT NULL,
    stridor BOOLEAN NOT NULL,
    grunting BOOLEAN,
    nasal_flaring BOOLEAN,
    oxygen_saturation_low BOOLEAN,

    -- Diarrhea / Dehydration
    diarrhea_duration_days REAL NOT NULL,
    blood_in_stool BOOLEAN,
    sunken_eyes BOOLEAN NOT NULL,
    skin_pinch_slow BOOLEAN NOT NULL,
    restlessness_irritability BOOLEAN,
    lethargy BOOLEAN NOT NULL,
    vomiting_everything BOOLEAN,

    -- Severe Malnutrition
    severe_muac BOOLEAN,
    bilateral_pitting_edema BOOLEAN,
    visible_severe_wasting BOOLEAN,

    -- AI Model Outputs
    severe_illness_probability REAL,
    triage_category VARCHAR(10),
    override_triggered BOOLEAN DEFAULT FALSE,

    -- Audit Fields
    clinician_override BOOLEAN DEFAULT FALSE,
    model_version VARCHAR(20),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- =========================================================
-- TRIAGE LOGS TABLE
-- Centralized logging for both maternal and under-5 triage
-- =========================================================

CREATE TABLE triage_logs (
    log_id SERIAL PRIMARY KEY,

    case_id INTEGER NOT NULL,
    module_type VARCHAR(20) NOT NULL,  -- 'maternal' or 'under5'

    input_data JSONB NOT NULL,
    model_output JSONB NOT NULL,

    override_triggered BOOLEAN,
    clinician_override BOOLEAN,

    model_version VARCHAR(20),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
