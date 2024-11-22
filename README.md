# DID Portability Proof of Concept using ACA-py

This repository contains a step-by-step guide to creating a Proof of Concept (PoC) for **Decentralized Identifier (DID) portability** using **Aries Cloud Agent Python (ACA-py)**. The PoC demonstrates how to rotate an original DID to a new one, cross-reference them, and ensure the credentials remain verifiable under the new DID.

## Overview
The goal is to test DID portability, which involves enabling a user to seamlessly migrate from one DID to another while retaining the ability to prove ownership of credentials issued under the original DID. This PoC uses **ACA-py** to create and manage DIDs, establish cross-references, and deactivate the old DID after rotation.

### Key Concepts
- **ACA-py**: An agent that manages decentralized identifiers and verifiable credentials.
- **DID Portability**: Ability to transition from one DID to another without losing the continuity of digital identity.
- **Ethereum DID (`did:ethr`)**: A DID created using the Ethereum blockchain.

## Repository Structure
- **Docker Setup**: Docker files and scripts for setting up ACA-py agents.
- **Scripts**: Bash and Python scripts for creating DIDs, updating metadata, and managing credentials.
- **README.md**: This guide explaining how to set up and test the DID portability PoC.

## Prerequisites
- **Docker** installed on your system.
- **VSCode** as the primary IDE for editing and managing the project.
- Basic knowledge of **Hyperledger Aries** and **Decentralized Identifiers**.
- **Node.js** and **npm** to install Ethereum DID libraries.

## Step-by-Step Guide

### Step 1: Clone the Repository
Start by cloning this repository to your local machine.

```bash
git clone https://github.com/yourusername/did-portability-poc.git
cd did-portability-poc
```

### Step 2: Set Up ACA-py Agents Using Docker
- Create and run ACA-py agents using Docker Compose. Each agent will manage its own DID.

## Configure Docker Compose: Edit the provided docker-compose.yml file to run multiple ACA-py agents on different ports.

## Run ACA-py Agents: Use Docker Compose to start the agents defined in the docker-compose.yml file.

### Step 3: Create Original DID (DID 1)
- Use ACA-py Admin API to create the first DID (DID 1).

## Step 4: Create the New DID (DID 2)
- Create a new DID for the rotation process using the second ACA-py agent.

## Step 5: Update DID 1 to Reference DID 2
- Modify the metadata of DID 1 to include a reference to DID 2.

## Step 6: Deactivate Original DID (DID 1)
- Mark DID 1 as inactive after the new DID is set up.

## Step 7: Implement Cryptographic Proof of Rotation
- To verify that DID 2 is the legitimate successor of DID 1, generate a cryptographic proof using the private key of DID 1.

## Step 8: Test Credential Portability

- Issue Credential to DID 1: Issue a verifiable credential to DID 1.

- Verify with DID 2: Use DID 2 to present a proof and verify the credentials that were issued to DID 1. 