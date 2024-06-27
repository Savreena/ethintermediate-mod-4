# Summary
The "RebelToken" Solidity contract oversees an Ethereum token ecosystem. Along with other features like owner control (Ownable) and token burning (ERC20Burnable), it integrates the ERC20 token specifications. By using buyRebel(), users can request tokens, and by using mintTokens(), they can have the owner mint them. Users can check their balances (checkBalance()), burn tokens (burnTokens()), redeem tokens for tiered memberships (redeemTier()) and transfer tokens (transferRebel()). Through structs and mappings, the contract keeps track of user information and tier levels, enabling organised token management and communication.

# Initiation
## Plan of implementation
In order to use this code, first log in to github and visit https://faucets.chain.link/ to claim a free Fuji testnet avax faucet. Right now Remix was used in this project for convenience of usage; go towards RemixIDE or Hardhat, depending on your interest. Copy the contents of DegenToken.sol into a new file called MyContract.sol. Navigate to the Compile tab on the left and select the appropriate compiler. Next, select the injection wallet (metamast, phantom, etc.) in the deploy section. To confirm the purchase, click Deploy.

# Actions

1. Establish the "Rebel" (RBL) token with ownership rights by creating the "RebelToken" contract.

2. Users use buyRebel to start token requests and specify the quantity.

3. To mint tokens for users who are in wait, the owner uses mintTokens.

4. TransferRebel is a tool for transferring tokens.

5. Using redeemTier, users upgrade their membership tiers and burn tokens according to tier levels.

6. Use checkBalance to verify token balances.


# Interacton with the contract

Through buyRebel() and mintTokens(), users can purchase tokens from the owner and engage with the RebelToken contract. They can use transferRebel() to move tokens, redeemTier() to reach higher tiers by burning designated token quantities, and checkBalance() to see how much money they have left. Owners control minting privileges and token burning with burnTokens().


# Writer

@Savreena Kaushal
