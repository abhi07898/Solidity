// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Inheritence --- 
keyword -- virtual and override 
*/

contract A {

    uint public x = 34535;
    address public owner = msg.sender;
    function fun1() public pure returns(string memory) {
        return "I am from contract A";
    }
    function fun2() public pure returns(string memory) {
        return "I am from contract A";
    }
    function fun3() public pure virtual returns(string memory) {   // virteul means it's edit in child contract
        return "I am from contract A";
    }
    function fun4() public pure virtual returns(string memory) {
        return "I am from contract A";
    }

}
contract B is A {  //here i inherited A contract in contract B

    //  i want here to change the fun4 return value
        function fun3() public pure override returns(string memory) {   // virteul means it's edit in child contract
        return "I am from contract B";
    }
    function fun4() public pure virtual override returns(string memory) {
        return "I am from contract B";
    }
}

contract C is B {  //here i inherited B contract in contract C
        function fun4() public pure override returns(string memory) {
        return "I am from contract C";
    }
}