// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Multiple inheritence
 C wants to inherit A and B contract at same time ---


 right to left --- depth first manner (how the c inherit A and B )
*/



/*
contract A {
    uint public a;
    constructor() {
        a = 100;
    }
    function funA() public {
        a = 10;
    }
}

contract B {
    uint public b;
    constructor() {
        b = 1110;
    }
    function funB() public {
        b = 220;
    }
}

contract C is A,B {

} */


contract A {
    uint public a;
    constructor() {
        a = 100;
    }
    function funA() public {
        a = 10;
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
}
//  "base like to most drive" A,B and B,A is different during multiple enhiretence
// how c inheirt ---- right most to left most and depth first manner 
contract C is A,B {

} 