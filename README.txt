# 🚀 Solidity Smart Contract Project

This project contains smart contracts written in [Solidity](https://soliditylang.org/), designed for use on the Ethereum blockchain.

## 📂 Project Structure

```
.
├── contracts/       # Solidity smart contracts
│   └── MyContract.sol
├── scripts/         # Deployment and testing scripts
├── test/            # Automated tests
├── hardhat.config.js # Hardhat configuration file
└── README.md        # Project documentation
```

## 🔧 Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- [MetaMask](https://metamask.io/) (for interacting with the deployed contract)

## 🚀 Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Install dependencies:**

   ```bash
   npm install
   ```

3. **Compile the contracts:**

   ```bash
   npx hardhat compile
   ```

4. **Deploy the contracts:**

   ```bash
   npx hardhat run scripts/deploy.js --network localhost
   ```

## 📝 Usage

Here's an example of how to interact with the deployed contract:

```js
const MyContract = await ethers.getContractFactory("MyContract");
const contract = await MyContract.deploy();
await contract.deployed();
console.log("Contract deployed to:", contract.address);
```

## ✅ Testing

Run the test cases using Hardhat:

```bash
npx hardhat test
```

## 🌍 Deploying to Ethereum Testnets (Goerli, Sepolia)

### 🔑 Get Your API Key

- Sign up for [Infura](https://infura.io/) or [Alchemy](https://www.alchemy.com/).
- Create a new project and copy your API key.

### 🦊 Set Up a Wallet

- Install [MetaMask](https://metamask.io/).
- Fund your wallet using a [Goerli faucet](https://goerlifaucet.com/) or [Sepolia faucet](https://sepoliafaucet.com/).

### ⚙️ Configure Hardhat for Testnets

Update your  `hardhat.config.js`:

```js
require("@nomiclabs/hardhat-ethers");
require("dotenv").config();

module.exports = {
  solidity: "0.8.18",
  networks: {
    goerli: {
      url: process.env.GOERLI_RPC_URL,
      accounts: [process.env.PRIVATE_KEY]
    },
    sepolia: {
      url: process.env.SEPOLIA_RPC_URL,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
```

### 🔒 Set Up Environment Variables

Create a `.env` file:

```
GOERLI_RPC_URL=https://goerli.infura.io/v3/YOUR_INFURA_API_KEY
SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/YOUR_INFURA_API_KEY
PRIVATE_KEY=your_metamask_private_key
```

### 🚀 Deploy the Contract

Deploy to a testnet:

```bash
npx hardhat run scripts/deploy.js --network goerli
```

Or for Sepolia:

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

## 🔍 Verifying Contracts on Etherscan

### 📦 Install Etherscan Plugin

```bash
npm install --save-dev @nomicfoundation/hardhat-verify
```

### ⚙️ Update `hardhat.config.js`

```js
require("@nomicfoundation/hardhat-verify");
require("dotenv").config();

module.exports = {
  solidity: "0.8.18",
  networks: {
    goerli: {
      url: process.env.GOERLI_RPC_URL,
      accounts: [process.env.PRIVATE_KEY]
    },
    sepolia: {
      url: process.env.SEPOLIA_RPC_URL,
      accounts: [process.env.PRIVATE_KEY]
    }
  },
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY
  }
};
```

### 🔐 Add Etherscan API Key

In your `.env`:

```
ETHERSCAN_API_KEY=your_etherscan_api_key
```

### 🚀 Verify Your Contract

```bash
npx hardhat verify --network goerli <DEPLOYED_CONTRACT_ADDRESS> <CONSTRUCTOR_ARGUMENTS>
```

## 🛡️ Security Best Practices

- Use SafeMath (for Solidity versions <0.8.0).
- Follow the Checks-Effects-Interactions pattern.
- Implement proper access control using OpenZeppelin’s AccessControl.
- Avoid using `delegatecall` unless necessary.
- Audit the code before deploying to mainnet.

## ⚡ Gas Optimization Tips

- Use `uint256` unless smaller types provide optimisation.
- Minimise storage writes.
- Use `unchecked` for arithmetic operations when overflow checks are unnecessary.

## 🛠️ Troubleshooting Common Errors

### ❌ Invalid API Key

- Verify your `.env` file and restart the terminal.

### ❌ Contract verification failed

- Ensure the Solidity version and constructor arguments match.

### ❌ Insufficient funds for gas

- Use a faucet to fund your wallet.

### ❌ Nonce too high/low

- Reset the account in MetaMask or manually set the nonce.

### ❌ Invalid constructor arguments

- Double-check constructor parameters during verification.

## 📄 License

This project is licensed under the MIT License.

## 💬 Still Stuck?

- Check [Hardhat documentation](https://hardhat.org/hardhat-runner/docs).
- Search for s[olutions on ](https://stackoverflow.com/questions/tagged/hardhat)[Stack Overflow](https://stackoverflow.com/questions/tagged/hardhat).
- Open an issue on GitHub.

