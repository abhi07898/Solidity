// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
Hash Funciton ---

1.  KECCAK-256      [input bytes, return - 32 bytesh hash]
2.  SHA-256         [input bytes, return - 32 bytesh hash, differ from keccak hash]
3.  RIPEMD 160      [input bytes, return - 20 bytesh hash]


hash collision -- 


function to convert the  data into bytes codes -- 
1. abi encode
2. abi.encodepackage

this both function will generate diffrent bytes code for same data ---
*/

contract HashFunction{
    function hashkeccak256(uint _x, string memory name, address _add) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_x,name,_add));
        //bytes32: 0xe0a44baf3c8bcd626abe09f210b7103c62b449e2d8f52370406dfc3e0e94e4be
    }

    function hashSHA256(uint _x, string memory name, address _add) public pure returns(bytes32) {
        return sha256(abi.encodePacked(_x,name,_add));
        //bytes32: 0x626d715678d4122afec96ba7fcea43f99ac3520996f99142e63ea68900b3eea8

    }

    function hashRipemd160(uint _x, string memory name, address _add) public pure returns(bytes20) {
        return ripemd160(abi.encodePacked(_x,name,_add));
        //bytes20: 0x6a91993819e979b420083b1cb138454570056c84

    }


    function enc_hashkeccak256(uint _x, string memory name, address _add) public pure returns(bytes32) {
        return keccak256(abi.encode(_x,name,_add));
        //bytes32: 0xe0a44baf3c8bcd626abe09f210b7103c62b449e2d8f52370406dfc3e0e94e4be
    }

    function enc_hashSHA256(uint _x, string memory name, address _add) public pure returns(bytes32) {
        return sha256(abi.encode(_x,name,_add));
        //bytes32: 0x626d715678d4122afec96ba7fcea43f99ac3520996f99142e63ea68900b3eea8

    }

    function enc_hashRipemd160(uint _x, string memory name, address _add) public pure returns(bytes20) {
        return ripemd160(abi.encode(_x,name,_add));
        //bytes20: 0x6a91993819e979b420083b1cb138454570056c84

    }
}