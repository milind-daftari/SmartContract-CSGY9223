# SmartContract-CSGY9223

This repository is part of the CS-GY 9223 B course, focusing on the development and deployment of smart contracts using Solidity on the Ethereum Sepolia Testnet.

## Problem Statement

The assignment entails the creation of two types of smart contracts using the Remix IDE:

1. **Simple Escrow Contract**: A contract where Alice sends money to a contract, and Bob can withdraw from this contract after a fixed amount of time.

2. **Simple ERC20 Token**: The task involves creating an ERC20 token named "NYUDEV" with the symbol "NYUD", which is minted and sent to the deployer's address.

## Smart Contract Implementation

### 1.1 Simple Escrow Contract (`SimpleEscrow.sol`)

- **Objective**: To facilitate a time-locked financial agreement between two parties, Alice and Bob.
- **Functionality**: Alice can deposit Ether into the contract, which Bob can withdraw after 1 day.
- **Usage**:
  - **Deposit**: Alice sends Ether to the contract.
  - **Withdrawal**: Bob can withdraw the deposited Ether after a day.
- **Contract Address**: [0x205dbe3b4a162fcf7a43e3b1556fcad6964398d6](https://sepolia.etherscan.io/address/0x205dbe3b4a162fcf7a43e3b1556fcad6964398d6)

### 1.2 Simple ERC20 Token (`NYUDEVToken.sol`)

- **Objective**: To create a custom ERC20 token.
- **Token Details**:
  - Name: "NYUDEV"
  - Symbol: "NYUD"
  - Initial Supply: 1000 NYUD tokens minted to the deployer's address.
- **Usage**:
  - **Transfer**: Holders can transfer NYUD tokens to others.
  - **Balance Inquiry**: Check the balance of NYUD tokens in any account.
- **Contract Address**: [0x1317cf4daa56fa9554684789bdef84c9f7d2b246](https://sepolia.etherscan.io/token/0x1317cf4daa56fa9554684789bdef84c9f7d2b246)

## Deployment

Both contracts are deployed on the Ethereum Sepolia Testnet. The deployment process involves:

1. Compiling the contracts using Remix IDE.
2. Connecting to the Sepolia Testnet via Metamask.
3. Deploying the contracts and testing their functionalities.
