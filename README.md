# Auditing with security tools slither and echinda
Learn slither and echinda

## Technology Stack & Dependencies

- Solidity (Writing Smart Contract)
- [NodeJS](https://nodejs.org/en/) To create hardhat project and install dependencies using npm


### 1. Clone/Download the Repository

### 2. Install Dependencies:
```
npm install
```

### 3. Install Slither
- Install the solc compiler first then slither
```
brew tap ethereum/ethereum
```
```
brew install solidity
```
```
git clone https://github.com/crytic/slither.git && cd slither
```
```
sudo python3 setup.py install
```
```
slither .
```
### 4. Install and use echinda 
- Install the solc compiler first then slither
```
docker pull trailofbits/eth-security-toolbox
```
```
docker run -it trailofbits/eth-security-toolbox
```
