// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
keyword --- virtual, override

*/


contract A {
    uint public a;
    constructor() {
        a = 100;
    }
    function funA() public {
        a = 10;
    }

    function fun() public virtual returns(string memory) {
        return "Hi i am in A contract";
    }
}

contract B is A {
    uint public b;
    constructor() {
        b = 1110;
        a=5678;
    }
    function funB() public {
        b = 220;
    }
    function fun() public virtual override returns(string memory) {
        return "Hi i am in B contract";
    }
}
//  "base like to most drive" A,B and B,A is different during multiple enhiretence
// how c inheirt ---- right most to left most and depth first manner 
contract C is A,B {
//  not able to understand fun() because it's available in A and B both, so we have to make B's fun virtual also and here we have to assign all the cintract 
// where fun() is initiated ---

    function fun() public virtual override(A,B) returns(string memory) {
        return "Hi i am in C contract";
    }
} 

contract D is A,B,C {
        function fun() public virtual override(A,B,C) returns(string memory) {
        return "Hi i am in D contract";
    }
}