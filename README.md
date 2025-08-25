# Uniswap V2

[![Actions Status](https://github.com/Uniswap/uniswap-v2-periphery/workflows/CI/badge.svg)](https://github.com/Uniswap/uniswap-v2-periphery/actions)
[![npm](https://img.shields.io/npm/v/@uniswap/v2-periphery?style=flat-square)](https://npmjs.com/package/@uniswap/v2-periphery)

In-depth documentation on Uniswap V2 is available at [uniswap.org](https://uniswap.org/docs).

The built contract artifacts can be browsed via [unpkg.com](https://unpkg.com/browse/@uniswap/v2-periphery@latest/).

# Local Development

The following assumes the use of `node@>=10`.

## Install Dependencies

`yarn`

## Compile Contracts

`yarn compile`

## Run Tests

`yarn test`

## Deploy
```
forge script script/DeployRouter.s.sol:DeployRouter --sig 'run()' \
--chain-id $CHAIN_ID \
--rpc-url $ETH_RPC_URL \
--private-key $PRIVATE_KEY \
--verifier-url $VERIFIER_URL \
--verifier $VERIFIER \
--verify \
--broadcast --ffi --legacy -vvvv 
```