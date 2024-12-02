#!/bin/bash
# Script to create a DID for Agent 1 and store it in a file

echo "Creating DID for Agent 1..."
RESPONSE=$(curl -s -X POST "http://localhost:8031/wallet/did/create" \
     -H "accept: application/json" \
     -H "Content-Type: application/json" \
     -d '{}')

# Extract DID from the JSON response and save it to a file
DID=$(echo $RESPONSE | jq -r '.result.did')
echo "Agent 1 DID: $DID"
echo $DID > ./dids/agent1_did.txt
