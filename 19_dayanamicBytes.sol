// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
Dayanimc size bytes ---
datatype -- 1. refrence(string, array)     2, value(uint, int, bool, address, bytes)
realte byets to array 
bytes 1,2,3,4,--------32
1 byte = 8bit, 1 hexadecimal = 4 bit so 1 byte = 2 hexadecimal digits
bytes decleration 
    bytes3 public temp; ---------it will create 3 boxes.

it's store hexadecimal digits 

URL ascii -- https://www.alpharithms.com/ascii-table-512119/
*/

contract dayanaimcBytes{
    bytes public byetsTempn;
    constructor() {
        byetsTempn = "abcdef1234";
    }
    function pushElement() public {
        byetsTempn.push('p');
    }
    function popElement() public {
        byetsTempn.pop();
    }

    function getLenght() public view returns(uint) {
        return byetsTempn.length;
    }

    function getElement(uint _x) public view returns(bytes1) {
        return byetsTempn[_x];
    }

}