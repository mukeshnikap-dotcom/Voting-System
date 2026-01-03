# Ownership Logic in Voting System

## Overview
This contract uses a simple ownership model to restrict certain actions (like starting or ending voting) to the contract deployer, also called the **admin**.

---

## How Ownership Works
- When the contract is deployed, the address that deploys it (`msg.sender`) is stored as the `owner`.
  ```solidity
  constructor() {
      owner = msg.sender;
  }
