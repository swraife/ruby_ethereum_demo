# Reference Materials

### Contract templates and design
[Open Zeppelin](https://openzeppelin.org/)

### API Access to Ethereum and IPFS
[Infura](https://infura.io/)

### Ethereum Development Framework
[Truffle](https://truffleframework.com/)

### Getting Started With Truffle
[Full Stack Hello World Voting Ethereum Dapp Tutorial — Part 1](https://medium.com/@mvmurthy/full-stack-hello-world-voting-ethereum-dapp-tutorial-part-1-40d2d0d807c2)

### Ruby Ethereum Gems
[ethereum.rb](https://github.com/EthWorks/ethereum.rb)

[eth](https://github.com/se3000/ruby-eth)

### Etherscan - The Ethereum Block Explorer
[Etherscan](https://etherscan.io/)

### EthGasStation - Gas Price Statistics
[EthGasStation](https://ethgasstation.info/)

### Bring Ethereum to your browser
[Metamask](https://metamask.io/)

# Term Definitions

DApp: Short for 'decentralized application'. Basically a frontend interface with smart contracts for the backend.


Smart Contract: For our (and most) purposes, a chunk of code written in Solidity deployed to the blockchain, which has functions that do things such as: store data to the blockchain, retrieve information from the blockchain, or transfer ether from one account to another.


Ethereum Network: There is the main ethereum network ('homestead') which is for real ether, real transactions. There are several test networks ('rinkeby', 'ropsten'), which work exactly the same, but the ether has no value. Miners donate their CPU power to these networks. And of course, a local network for development - we're using 'ganache'


Account: A sequence of 20 bytes calculated from the public key. Looks like: 0x09438E46Ea66647EA65E4b104C125c82076FDcE5


Wallet: A tool for managing and providing access to your ethereum accounts. There are hardware and software options. A wallet a has one seed phrase (12 words) for many accountsI use [Metamask](https://metamask.io/)


Gas Limit: The maximum quantity of gas you are willing to pay for a transaction. Think: How many gallons? . Note: This is in part to prevent huge, or neverending transactions. E.g. when gas runs out, the transaction aborts. Unused gas is returned to you (mostly). The amount of gas a transaction takes is based on the computational complexity of that transaction.


Gas Price: The price you are paying for each quantity of gas for a transaction. Think: How many dollars per gallon am I going to pay? Note: You set this price! Then, it's up to the miners to accept your transaction into their block. [EthGasStation](https://ethgasstation.info/) can tell you stats about the average current price. Generally, the higher your gas price, the faster your transaction will be mined.
