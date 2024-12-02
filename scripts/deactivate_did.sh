#!/bin/bash
# Script to deactivate the old DID (Agent 1)

# Load the DID from the saved file
DID_OLD=$(cat ./dids/agent1_did.txt)

echo "Deactivating DID $DID_OLD..."

curl -X PATCH "http://localhost:8031/wallet/did/local/metadata" \
     -H "accept: application/json" \
     -H "Content-Type: application/json" \
     -d "{
           \"did\": \"$DID_OLD\",
           \"metadata\": {
               \"status\": \"deactivated\"
           }
        }"
