# Merkle Airdrop & EIP-712 Signatures

A comprehensive implementation of Merkle tree-based token airdrops and EIP-712 signatures in Solidity, built with Foundry.

## Overview

This project demonstrates advanced Solidity techniques for efficient token distribution and secure transaction authorization:

- **Merkle Airdrops**: 
  - Gas-optimized token distribution using Merkle proofs
  - Scalable architecture for handling large recipient lists
  - Built-in verification mechanisms

- **EIP-712 Signatures**:
  - Type-safe structured data signing
  - Replay attack prevention
  - Off-chain message verification

## Features

- Foundry-based testing and deployment framework
- Gas-optimized contract implementations
- Comprehensive test suite
- Automated scripts for Merkle tree generation
- Integration with OpenZeppelin's battle-tested contracts

## Prerequisites

- [Git](https://git-scm.com/)
- [Foundry](https://getfoundry.sh/)
- [Node.js](https://nodejs.org/) (for additional tooling)

## Installation

1. Clone the repository:
  ```bash
  git clone https://github.com/[your-username]/merkle-airdrop-signatures.git
  cd merkle-airdrop-signatures
  ```

2. Install dependencies:
  ```bash
  forge install
  ```

## Usage

### Generate Merkle Tree Input

To create input data for your Merkle tree:
  ```bash
  forge script script/GenerateInput.s.sol:GenerateInput
  ```

### Generate Merkle Tree

To generate the Merkle tree from your input:
  ```bash
  forge script script/MakeMerkle.s.sol:MakeMerkle
  ```

### Run Tests

Execute the test suite:
  ```bash
  forge test
  ```

For detailed test output:
  ```bash
  forge test -vvv
  ```

## Project Structure
  ├── src/ # Source contracts
  │ ├── MerkleAirdrop/ # Airdrop implementation
  │ └── EIP712/ # Signature verification
  ├── test/ # Test files
  ├── script/ # Deployment & automation scripts
  │ ├── GenerateInput.s.sol
  │ └── MakeMerkle.s.sol
  └── README.md

## Security

This project implements several security best practices:

- Merkle proof verification for airdrop claims
- EIP-712 signature verification
- Protection against replay attacks
- Integration with OpenZeppelin's secure contract implementations

⚠️ **Note**: While this codebase implements security best practices, it's recommended to conduct a thorough audit before using in production.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

Please ensure your PR:
- Includes tests for new functionality
- Updates documentation as needed
- Follows the existing code style

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [OpenZeppelin](https://openzeppelin.com/) for their secure contract implementations
- [Foundry](https://getfoundry.sh/) for the powerful Ethereum development toolchain
- The Ethereum community for their continuous innovation in token distribution mechanisms

# Thank you!

If you appreciated this, feel free to follow me or donate! *Below is JM's address*

ETH/Arbitrum/Optimism/Polygon/etc Address: 0x0f879bFF6c5cb229AFBaFCfFFE6C0FC29f95c796

[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://x.com/Boku_JM)
[![Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/jeanmarcc/)

---

Built with 💙 for the Ethereum community.