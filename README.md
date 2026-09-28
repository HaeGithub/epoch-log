# EpochLog - The Time-Locked Digital Vault ⏳🔒

EpochLog is a decentralized application (DApp) built on the BOT Chain that allows users to create time-locked digital capsules. Users can securely store messages, secrets, or future notes on the blockchain, which can only be revealed and read after a specific deadline has passed.

## 🌐 Live Demo & Links
- **Website**: [https://epochlog.my.id](https://epochlog.my.id)
- **Network**: BOT Chain Mainnet (Chain ID: 677)
- **Smart Contract Address**: `0x1207DEd97d8DC5967a400252182B6d8e638B615a`
- **Block Explorer**: [View Contract on BOT Scan](https://scan.botchain.ai/address/0x1207DEd97d8DC5967a400252182B6d8e638B615a?tab=txs)

## ✨ Features
- **Time-Locked Security**: Messages are encrypted by time. The smart contract strictly prevents reading the message content until the UNIX timestamp requirement is met.
- **On-Chain Storage**: All capsule data is stored permanently and transparently on the BOT Chain.
- **Censorship-Resistant UI**: When a vault is locked, the UI automatically applies a blur effect and the contract returns a "LOCKED" placeholder to prevent data leaks via the frontend.
- **Web3 Integration**: Seamless login and interaction using MetaMask.

## 🛠️ Tech Stack
- **Frontend**: HTML5, Tailwind CSS, JavaScript (Vanilla)
- **Web3 Integration**: Ethers.js (v5)
- **Smart Contract**: Solidity (^0.8.19)
- **Deployment**: Vercel (Frontend), Remix IDE (Smart Contract)
- **Domain**: IDCloudHost (.my.id)

## 📁 Repository Structure
- `index.html` - The main entry point and UI of the DApp.
- `EpochVault.sol` - The Solidity source code for the smart contract.
- `assets/` - Directory containing project images and logos.

## 🚀 How to Run Locally
1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/epoch-log.git
   ```
2. Open the project folder in your code editor (e.g., VS Code).
3. Using a local server extension (like Live Server in VS Code), start the server to serve `index.html`.
4. Ensure you have the MetaMask extension installed in your browser and connected to the BOT Chain Mainnet.

---
*Built for the GirlMeetsTech Hackathon 2026*