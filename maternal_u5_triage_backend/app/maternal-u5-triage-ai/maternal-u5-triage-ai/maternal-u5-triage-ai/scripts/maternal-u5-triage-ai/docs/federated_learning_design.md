# Federated Learning Architecture

To protect patient privacy while enabling collaborative AI training, the MaternalU5Triage system supports federated learning.

## Concept

Instead of transferring sensitive patient data to a central server, hospitals train AI models locally.

Only model parameter updates are shared.

## Workflow

1. Each hospital trains the maternal risk model on its local dataset.
2. Model weight updates are securely transmitted to a central aggregation server.
3. The server combines updates from all participating hospitals.
4. A new global model is generated.
5. The updated model is redistributed to participating institutions.

## Benefits

• Improved privacy protection
• Reduced data sharing risks
• Better model generalization across diverse populations
• Compliance with healthcare data governance requirements

This approach allows the MaternalU5Triage AI system to scale across multiple hospitals while maintaining strong privacy protections.
