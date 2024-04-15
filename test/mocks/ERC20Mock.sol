// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20{



  constructor()ERC20("MOCK","MOCK"){

  }

    function mint(address user,uint256 amount)public{
      _mint(user, amount);
    }
}