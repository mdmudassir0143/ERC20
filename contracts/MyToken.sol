//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract  MyToken is ERC20 {
    uint constant _initial_supply = 100*(10**18);


    //ERC20 constructor takes 2 strings 
    //1- the name of your token
    //2 - the symnol of your token

    constructor() ERC20("My Token","MTKN"){
        _mint(msg.sender, _initial_supply); // minting initial supply to contract creator
    }
}