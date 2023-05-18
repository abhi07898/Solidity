// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
While, For and do while
*/


contract Loops {
    function loop() public pure returns(uint) {
        uint count = 0;
        for (uint i=0; i< 10; i++) {
            count = count + 5;
        }

        return count;
    }
}