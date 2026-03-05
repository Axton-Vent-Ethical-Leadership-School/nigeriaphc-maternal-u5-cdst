# MaternalU5Triage Deployment Guide

This document describes how to deploy the MaternalU5Triage AI model using Google Cloud.

## Step 1: Upload Model

Upload trained model to Cloud Storage.

Example:

gsutil cp maternal_u5_rf_model.pkl gs://maternal-u5triage-ai/models/

## Step 2: Register Model in Vertex AI

Use the Vertex AI console to register the trained model.

Steps:

1. Open Vertex AI in Google Cloud Console
2. Navigate to Models
3. Click "Import Model"
4. Select the model stored in Cloud Storage

## Step 3: Deploy Endpoint

Deploy the model as a real-time prediction endpoint.

1. Click "Deploy to Endpoint"
2. Configure machine resources
3. Enable prediction requests

## Step 4: Connect Applications

Applications such as mobile health systems or hospital dashboards can call the endpoint via API.

Example request:

POST /predict

Payload:

{
 "maternal_age": 35,
 "blood_pressure": 150,
 "hemoglobin": 9.5
}

Response:

{
 "risk_level": "High",
 "recommended_action": "Immediate clinical review"
