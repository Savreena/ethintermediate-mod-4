# Summary
The computer language Solidity, which is used to create smart contracts on the Ethereum network, is used to write this contract. First, we imported three libraries into the smart contract: ERC20, Ownable, and ERC@)Burnable. An ERC20 token with extra features for token burning and membership tiers is called the DegenToken contract. In order to be added to the owner's minting queue, players must acquire tokens. Users can perform balance checks, transfer tokens, and burn precise sums of tokens to redeem them for different membership levels. In order to manage gas, the contract also permits the owner to burn tokens from any address.

# Initiation
## Plan of implementation
In order to use this code, first log in to github and visit https://faucets.chain.link/ to claim a free Fuji testnet avax faucet. Right now Remix was used in this project for convenience of usage; go towards RemixIDE or Hardhat, depending on your interest. Copy the contents of DegenToken.sol into a new file called MyContract.sol. Navigate to the Compile tab on the left and select the appropriate compiler. Next, select the injection wallet (metamast, phantom, etc.) in the deploy section. To confirm the purchase, click Deploy.

# Actions

1. Establish the DegenToken contract, which designates the contract owner and configures the "Degen" (DGN) token.
2. By contacting buyDegen and indicating how many tokens they would like, users can request tokens.
3. For all participants waiting in queue, the owner calls mintToken to mint tokens.
4. With transferDegen, users can send tokens to other users.
5. By invoking redeemMembership and burning the required tokens, users swap tokens for membership levels.
6. Calling checkBalance allows users to view their token balance.


# Interacton with the contract

As the player uses buyDegen() to request a token. The player will now be added to the queue. Call mintToken() from the owner account after that. Token will be minted as a result. To check the balance, switch to the player account and use checkBalance(). You can now exchange tokens for cards depending on their rarity by passing (0,1,2,3,4) for cards that are either bronze, silver, gold, platinum, or diamond. You can also use transferDegen() to send tokens to another player's account or burnDegen() to destroy tokens that you no longer need.


# Writer

@Savreena Kaushal
