// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
it's a special function -- a function that called firstly while deployig the contract 
work -- for intialised state varaible

what if you are not initilizing it -- that already created by remix 
*/ 

contract constructorImplmentation {
    uint public age;
    address public owner;
    string public name;
    constructor(uint _age, address _owner, string memory _name ) {
        age = _age;
        owner = _owner;
        name = _name;
    }
}