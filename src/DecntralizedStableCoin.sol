// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

import{ERC20Burable , ERC20} from "@openzepplin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

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
contract DecentralizedStableCoin  is ERC20Burnable{
    constructor()ERC20("DecentralizedStableCoin","DSC") {
        
    }
}