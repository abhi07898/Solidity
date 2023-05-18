// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;


contract terNiary {
    function fun(uint _x) public pure returns(string memory) {
        string memory val;
        // if(_x>100) {
        //     val = "greater";
        // } else {
        //     val = "smaller";
        // }

        val = _x > 100 ? "greater" : "equal or smaller";
        return val;
    }
}