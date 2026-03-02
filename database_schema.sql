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
