// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
we can't use if-else in contract level (if, else if, else 
*/

contract ifElse {
    function compareValue(uint _x) public pure returns(string memory) {
        string memory val;
        if(_x > 100) {
            val = "greate then 100";
        } else if(_x < 100) {
            val = "smaller then 100";
        } else {
            val = "equal to 100";
        }

        return val;
    }
}