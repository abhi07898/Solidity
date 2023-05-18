// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

// modifier, require, public, state --
contract ownable {
    address public owner;   //owner is a vriable with value type address(example - uint,int,strign) --public will allow to read the data
    constructor(){
        owner = msg.sender ;   //msg.sender -- gave the address of deployed account
    }

      //modifier is a special type of function to gave permission 
    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _;
    }
    // function params should be start with '_' symbol (like _a, _b) 
    function setOwner(address _newOwmer) public onlyOwner{
        require(_newOwmer != address(0), "Invalid Address");
        owner = _newOwmer;
    }

    function onlyOwnerCanAccess() public onlyOwner {
        // code for acces only by the owner 
    } 

    function anyOneCanAccess() public {
        // code for access all the users --
    }
}