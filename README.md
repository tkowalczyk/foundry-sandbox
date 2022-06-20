Build and test smart contract:

```
forge build
forge test
```

Install dependencies:

```
forge install openzeppelin/openzeppelin-contracts
```

Check remappings:

```
forge remappings
```

Deploy and verify smart contract:

```
forge create --rpc-url https://eth-goerli.alchemyapi.io/v2/ALCHEMY_API_KEY --private-key PRIVATE_KEY src/Contract.sol:Contract --verify --etherscan-api-key ETHERSCAN_API_KEY --constructor-args 1
```

Get data from smart contract:

```
cast call 0xea59B4D7f636D70A36447f10F9c09457736Aa308 "get()(uint256)" --rpc-url https://eth-goerli.alchemyapi.io/v2/ALCHEMY_API_KEY
```

Change data in smart contract:

```
cast send 0xea59B4D7f636D70A36447f10F9c09457736Aa308 "inc()(uint256)" --private-key PRIVATE_KEY --rpc-url https://eth-goerli.alchemyapi.io/v2/ALCHEMY_API_KEY
```

Check txns:

```
cast tx 0xc84081e08280cbb38b9b4094f9e7874a8bdf5e4af6c82270e40437a4d3719b93 --rpc-url https://eth-goerli.alchemyapi.io/v2/ALCHEMY_API_KEY
```

Gas estimation:

```
cast estimate 0xea59B4D7f636D70A36447f10F9c09457736Aa308 "inc()(uint256)" --rpc-url https://eth-goerli.alchemyapi.io/v2/ALCHEMY_API_KEY --private-key PRIVATE_KEY
```