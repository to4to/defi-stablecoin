// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

import { OracleLib, AggregatorV3Interface } from "./libraries/OracleLib.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { DecentralizedStableCoin } from "./DecentralizedStableCoin.sol";

/**
 * @author github.com/to4to
 * @title DSCEngine
 * 
 * 
 */


contract DSCEngine  is ReentrancyGuard{

////////////////////////////////
//////// Errors
//////////////////////////////
error DSCEngine__TokenAddressesAndPriceFeedAddressesAmountsDontMatch();
    error DSCEngine__NeedsMoreThanZero();
    error DSCEngine__TokenNotAllowed(address token);
    error DSCEngine__TransferFailed();
    error DSCEngine__BreaksHealthFactor(uint256 healthFactorValue);
    error DSCEngine__MintFailed();
    error DSCEngine__HealthFactorOk();
    error DSCEngine__HealthFactorNotImproved();



/////////////////////////////
///// Types
////////////////////////////







////////////////////////////////
//////// State Variables
///////////////////////////////



//////////////////////////////
/////Events
/////////////////////////////


/////////////////////////////
//////Modifier
/////////////////////////////




constructor(address[] tokenAddresses,address[] priceFeedAddresses, address dscEngine){




    
}




}