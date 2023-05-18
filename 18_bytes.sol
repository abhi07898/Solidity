// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
fixed size bytes ---
datatype -- 1. refrence(string, array)     2, value(uint, int, bool, address, bytes)
realte byets to array 
bytes 1,2,3,4,--------32
1 byte = 8bit, 1 hexadecimal = 4 bit so 1 byte = 2 hexadecimal digits
bytes decleration 
    bytes3 public temp; ---------it will create 3 boxes.

it's store hexadecimal digits 

URL ascii -- https://www.alpharithms.com/ascii-table-512119/
*/


contract BytesImplimentation{
    bytes5 public tempByet5;   //0x0000000000
    bytes7 public tempByet7;   //0x00000000000000

    function setValues() public {
        tempByet5 = "abcde";
        tempByet7 = "12abcde";
    }

    function getDigit() public view returns(bytes1) {
        return tempByet5[2];
    }
    function getLength() public view returns(uint) {
        return tempByet5.length;
    }
}