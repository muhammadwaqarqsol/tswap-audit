// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";
import {ERC20Mock} from "../mocks/ERC20Mock.sol";
import {PoolFactory} from "../../src/PoolFactory.sol";
import {TSwapPool} from "../../src/TSwapPool.sol";

contract Invariant is  StdInvariant,Test{
    //These pools have to two asssts
    ERC20Mock poolToken;
    ERC20Mock wethToken;
      
    //we need contract
    PoolFactory poolFactory;
    TSwapPool tswapPool;  // Pool token   //weth 



    int256 constant STARTING_X=100e18; // srtarting ERC20 //Pool Token

    int256 constant  STARTING_Y=50e18;


    function setUp() public{
      wethToken= new ERC20Mock();
      poolToken= new ERC20Mock();

      poolFactory= new PoolFactory(address(wethToken));
      
      tswapPool=TSwapPool(poolFactory.createPool(address(poolToken)));



      poolToken.mint(address(this),uint256(STARTING_x));
    }
}