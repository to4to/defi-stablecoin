// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

//import{ERC20Burable , ERC20} from "@openzepplin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

import {ERC20Burnable, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable}  from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title DecentralizedStableCoin
 * @author Himanshu Kumar Singh
 * Collateral : Exogeous (ETH & BTC)
 * Minting : Algorithmic
 * Relative Stability : Pegged To USD
 *
 * This is Contract ment to be governed by DSCEngine. This is ERC-20 implementation of our Stable Coin System.
 *
 */
contract DecentralizedStableCoin is ERC20Burnable ,Ownable{
error DecentralizedStableCoin__MustBeMoreThanZero();
error DecentralizedStableCoin__BurnAmountExceedsBalance();

    constructor() ERC20("DecentralizedStableCoin", "DSC") Ownable(){}


    function burn(uint256 _amount) public override onlyOwner {
        uint256 balance=balanceOf(msg.sender);
        if(_amount<=0){
            revert DecentralizedStableCoin__MustBeMoreThanZero();
        }
        if(balance<_amount){
            revert DecentralizedStableCoin__BurnAmountExceedsBalance();
        }


        super.burn(_amount);
    }



    function mint(address _to,uint256 _amount) external onlyOwner returns(bool){

_mint(_to,_amount);
return true;
    }
}
