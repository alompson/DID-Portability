#!/bin/bash
# Script to link DID 1 (Agent 1) to DID 2 (Agent 2)

# Load the DIDs from the saved files
DID_OLD=$(cat ./dids/agent1_did.txt)
DID_NEW=$(cat ./dids/agent2_did.txt)

echo "Linking DID $DID_OLD to DID $DID_NEW..."

curl -X PATCH "http://localhost:8031/wallet/did/local/metadata" \
     -H "accept: application/json" \
     -H "Content-Type: application/json" \
     -d "{
           \"did\": \"$DID_OLD\",
           \"metadata\": {
               \"new_did_reference\": \"$DID_NEW\"
           }
        }"
