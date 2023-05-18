// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
1. order of inheritence will same as order of execution--
*/


contract A{
    string public name;
    uint public age;

    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }
}

contract B{
    string public add;
    uint public salary;

    constructor(string memory _add, uint _salary) {
        add = _add;
        salary = _salary;
    }
}
/*1st way to pass fixed value -- 
order of execution 1. A,B,C
*/
contract C is A("gaurav", 21),B("delhi", 1000989) {

}

/*2nd way -- to pass fixed value -- 
order of execution 1. B,A,D
*/
contract D is B,A {
    constructor() A("gaurav", 21) B("delhi", 1000989) {

    }
}
/* way to pass dayanaic value --
order of execution 1. A,B,E
*/
contract E is A,B {
   constructor(string memory _add, uint _salary,string memory _name, uint _age) A(_name, _age+2) B(_add, _salary*3){

   }
}
// static + dayanaic both at same time ---
contract F is A("gaurav from f", 21),B {
   constructor(string memory _add, uint _salary)  B(_add, _salary*3){

   }
}