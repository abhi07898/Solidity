// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
get, update delete and length -- how we can create array in memory (refrenece type var are already stored in storage means blockchain)
array default value = 0
*/

contract FixedSizeArray{
    /*uint[5] public arr = [10,20,30,40,50];
    function array() public view returns(uint) {
       /* uint temp;
        temp = arr[3];
        arr[3] = 909090;
        uint temp2 = arr[3];

        // delete value from spefic array index 
        delete arr[3];


        // length 
        uint len = arr.length;
        return len;
    }*/



     uint[5]  arr;

    constructor() {
        arr = [10,20,30,40,50];
    }
// how to return array from a funciton
    function returnArray() public view returns(uint[5] memory ) {
        return arr;
    }
// craete a array isnide llop

     function arrayWithLoop(uint _x) public {
         for (uint i=0; i< arr.length; i++) {
             arr[i] = _x +i;
         }
     }

// create array inside memory ---
    function createArray() public pure returns(uint) {

        uint[] memory arrayMemory = new uint[](3);
        arrayMemory[1] = 33;
        return arrayMemory[1];
    }


    

}