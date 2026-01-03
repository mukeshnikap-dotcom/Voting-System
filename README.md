# Voting System

## Overview
A basic voting smart contract written in Solidity.  
The contract allows an admin to start and end voting, and users can vote for one of two candidates. Each address can vote only once.

---

## Features
- Admin can start or stop voting.
- Two candidates to vote for.
- Each address can vote only once.
- Anyone can check the vote counts.

---

## Contract Details
- **Solidity Version**: ^0.8.26
- **License**: MIT

### Functions
- `votingStart()` → Start voting (admin only).
- `votingEnd()` → End voting (admin only).
- `vote_Candidate_1()` → Vote for Candidate 1.
- `vote_Candidate_2()` → Vote for Candidate 2.
- `checkVotes()` → View current vote counts.

---

## Usage
1. Deploy the contract (deployer becomes admin).
2. Admin calls `votingStart()`.
3. Users call `vote_Candidate_1()` or `vote_Candidate_2()`.
4. Anyone can call `checkVotes()` to see results.
5. Admin calls `votingEnd()` to stop voting.
