# Overview
This Solidity contract, named "RebelToken", manages a token ecosystem on Ethereum. It incorporates ERC20 token standards with additional functionalities like token burning (ERC20Burnable) and owner control (Ownable). Users can request tokens via buyRebel() and have them minted by the owner using mintTokens(). Tokens can be transferred (transferRebel()), redeemed for tiered memberships (redeemTier()), burned (burnTokens()), and users can check their balances (checkBalance()). The contract tracks user data and tier levels through structs and mappings, facilitating structured token management and interaction.

# Initiation
## Implementation plan
To run this code, first go to https://faucets.chain.link/ and claim free fuji testnet avax faucet using login via github. Now Head towards remixIDE or hardhat as per your intrest, in this project remix was used for its ease. create a new MyContract.sol file and copy the content of DegenToken.sol into it. In left side go to compile tab and choose the compatible compiler. Then in deploy section choose injection wallet (metamast, phantom, etc.). click Deploy and confirm the transaction.

# Steps

1. Create the "RebelToken" contract, establishing the "Rebel" (RBL) token with ownership privileges.

2. Users initiate token requests with buyRebel, specifying the amount.

3. The owner executes mintTokens to mint tokens for queued users.

4. Tokens can be transferred via transferRebel.

5. Users upgrade membership tiers using redeemTier, burning tokens based on tier levels.

6. Check token balances with checkBalance.

# Interaction with contract

Users interact with the RebelToken contract by buying tokens via buyRebel() and having them minted by the owner with mintTokens(). They can transfer tokens using transferRebel(), redeem tier levels (redeemTier()) by burning specific token amounts, and check their balance via checkBalance(). Owners manage token burning with burnTokens() and minting privileges.

# Writer

@Savreena Kaushal
