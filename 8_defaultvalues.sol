// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*all data types having some default values if we are declared but not intilaised --*/

contract defauktValues {
    uint public varuint;
    bool public varbool;
    address public varaddress;
    bytes32 public varbytes32;
    string public varstring;
    bytes16 public varbytes16;
}

