// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    // Enum for tiered membership levels
    enum TierLevel { Fundamental, Regular, Superior, Prestigious, Supreme }

    // Structs to store user and tier data
    struct Player {
        address addr;
        uint256 amount;
    }

    struct UserTiers {
        uint256 fundamental;
        uint256 regular;
        uint256 superior;
        uint256 prestigious;
        uint256 supreme;
    }

    // Arrays to store users and tiers (if needed in the future)
    Player[] public userQueue;
    UserTiers[] public tierList;

    // Mappings to track redeemed tiers
    mapping(address => UserTiers) public userTierMapping;

    // Function to add users to the purchase queue
    function buyDegen(address _addr, uint256 _amount) public {
        userQueue.push(Player({ addr: _addr, amount: _amount }));
    }

    // Function to mint tokens for all users in the queue
    function mintTokens() public onlyOwner {
        while (userQueue.length > 0) {
            uint256 i = userQueue.length - 1;
            if (userQueue[i].addr != address(0)) {
                _mint(userQueue[i].addr, userQueue[i].amount);
                userQueue.pop();
            }
        }
    }

    // Function to transfer tokens to another user
    function transferDegen(address _to, uint256 _amount) public {
        require(_amount <= balanceOf(msg.sender), "Tokens are insifficient");
        _transfer(msg.sender, _to, _amount);
    }

    // Function to redeem different tier levels
    function redeemTier(TierLevel _level) public {
        uint256 burnAmount;

        if (_level == TierLevel.Fundamental) {
            burnAmount = 100;  // Example burn amount for Basic level
            require(balanceOf(msg.sender) >= burnAmount, "Tokens are insifficient");
            userTierMapping[msg.sender].fundamental += 1;
            burn(burnAmount);
        } else if (_level == TierLevel.Regular) {
            burnAmount = 200;  // Example burn amount for Standard level
            require(balanceOf(msg.sender) >= burnAmount, "Tokens are insifficient");
            userTierMapping[msg.sender].regular += 1;
            burn(burnAmount);
        } else if (_level == TierLevel.Superior) {
            burnAmount = 300;  // Example burn amount for Premium level
            require(balanceOf(msg.sender) >= burnAmount, "Tokens are insifficient");
            userTierMapping[msg.sender].superior += 1;
            burn(burnAmount);
        } else if (_level == TierLevel.Prestigious) {
            burnAmount = 400;  // Example burn amount for Elite level
            require(balanceOf(msg.sender) >= burnAmount, "Tokens are insifficient");
            userTierMapping[msg.sender].prestigious += 1;
            burn(burnAmount);
        } else if (_level == TierLevel.Supreme) {
            burnAmount = 500;  // Example burn amount for Ultimate level
            require(balanceOf(msg.sender) >= burnAmount, "Tokens are insifficient");
            userTierMapping[msg.sender].supreme += 1;
            burn(burnAmount);
        } else {
            revert("Invalid tier level selected");
        }
    }

    // Function to burn tokens with gas management, only callable by owner
    function burnTokens(address _from, uint256 _amount) public onlyOwner {
        _burn(_from, _amount);
    }

    // Function to check the token balance of the caller
    function checkBalance() public view returns (uint256) {
        return balanceOf(msg.sender);
    }
}
