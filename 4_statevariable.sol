// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*varaible types -- 
1. state --- define inside the contract and outside the funcitons -- 
2. local 
3. global*/

contract stateVariableIMplimentation{
    uint public salary;    //irectly stored in blockchain storage -- that take cost from ether (gas amount)

    /*initilaztion way of state variable 
    1. uint public salary = 100000;
    2. by implimenting contructor
    3. by custome funciton 
    */

    constructor() {
        salary = 1000000;
    }

    function setSalary() public {
        salary = 2000000;
    }
}