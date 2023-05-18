// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

contract Loops{
    function loop() public pure returns(uint) {
        uint count = 0;
        for (uint i=0; i<10; i++) {
            // if(i==8) {
            //     continue;
            // }
            count = count + 5;
            if(i==2) {
                break;
            }
        }
        return count;
    }
}