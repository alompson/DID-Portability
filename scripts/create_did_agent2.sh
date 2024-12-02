#!/bin/bash
# Script to create a DID for Agent 2 and store it in a file

echo "Creating DID for Agent 2..."
RESPONSE=$(curl -s -X POST "http://localhost:8051/wallet/did/create" \
     -H "accept: application/json" \
     -H "Content-Type: application/json" \
     -d '{}')

# Extract DID from the JSON response and save it to a file
DID=$(echo $RESPONSE | jq -r '.result.did')
echo "Agent 2 DID: $DID"
echo $DID > ./dids/agent2_did.txt
