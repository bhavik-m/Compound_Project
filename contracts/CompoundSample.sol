//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.3;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/compound.sol";

contract CompoundSample {
    // ether
    address eth_contract_address;

    address _ctoken;
    address _token;
    uint256 ctoken_balance;

    function supplyERC20(uint256 amount) external {
        CErc20 ctoken = CErc20(_ctoken);
        IERC20 token = IERC20(_token);
        token.transferFrom(msg.sender, address(this), amount);
        token.approve(_ctoken, amount);
        uint256 before_ctoken_balance = ctoken.balanceOf(address(this));
        require(ctoken.mint(amount) == 0, "mint failed");
        uint256 after_ctoken_balance = ctoken.balanceOf(address(this));
        ctoken_balance = after_ctoken_balance - before_ctoken_balance;
    }

    function supplyeth() external payable {
        CEth ctoken = CEth(_ctoken);
        ctoken.mint{value: msg.value}();
    }

    function withdrawERC20() external {
        CErc20 ctoken = CErc20(_ctoken);
        IERC20 token = IERC20(_token);
    }
}
