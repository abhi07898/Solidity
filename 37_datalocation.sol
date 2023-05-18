// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
Data location --
1. storage - 
    blockchain store
    state variables 
    gas cost will here bcs we are store it on blockchcina 
    inst=retde data is permanenet here
2. memory - 
    RAM or STACK
    it will store local varaibeles, 
    negligabke gas amount 
    function inout and function output
3. call data - 
    RAM or STACK
    it willm used in funciton input
    gas cost will minimum here 
    we can't change the data of call data
*/


contract dataLocation {
    uint[] public arr = [1,3,7,9,11];
    function Storage() public {
        uint[] storage arrs = arr; //here aars and arr using same address
        arrs[3] = 99;
    }

    function Memory() public view {
        uint[] memory arrm = arr; // here it's creating a another arress location for arrm
        arrm[1] = 999;
    }


    // call data implimentation --
    function Memory(string memory, uint[] memory arr) public {
        getInMemory(arr);
        //getInCallData(arr);
    }

    function CallData(string calldata, uint[] calldata arr) public {
        getInMemory(arr);
        getInCallData(arr);
    }

    function getInMemory(uint[] memory  arr) public {

    }

    function getInCallData(uint[] calldata arr) public {

    }

}