// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;


// data types - values & refrences  ------ bool, int -- uint, address and bytes 32

contract valueType{
    bool public boolTemp = true;
    uint public uintTemp = 243;   // paisa (positive)  0 to 2(pow)256 ---uint8, uint16, uint32
    int public  intTemp = 143;     // +/-2(pow)255     int8, int16, int32
    address public addsTemp = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;    // 20bits stored in hexadesmial
    bytes32 public bytesTemp;

}