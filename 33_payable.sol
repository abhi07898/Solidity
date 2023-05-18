// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
payable keyouword -- to make address and functions to payabale.


if button is red -- payabe , blue - pure/view or state varaible, yellow --trnsaction funcitons.
*/

contract PayableImplimnetation {

    // public address owner;
    address payable public  owner = payable(msg.sender);


    constructor() payable {  //it will make deploy color red

    }

    function getETH() payable public{  //we can't make fucniotn view/pure while using payable keyword
    // function getETH()  public payable{

    }


    function checkBalofCurretContract() public view returns(uint) {
        return address(this).balance;

    }
}