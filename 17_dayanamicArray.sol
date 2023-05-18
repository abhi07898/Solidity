// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
dayanamic size array 
----------------------

no need ot defien size,
extra method -- push, pop
can't create inside memory /  inside funcion --
*/


contract dayanamicSizedArray{
    uint[] public arr = [10,11,222,333,4444,5555,5,34,25,34,232,545,4623,345646,56765,56,234,345,7897];

    function fun() public {
        // how we can get 
        uint temp = arr[3];

        // update 
        arr[4] =898989;  // [10,11,222,333,898989,5555,5,34,25,34,232,545,4623,345646,56765,56,234,345,7897];

        // delete
        delete arr[1];  // [10,0,222,333,898989,5555,5,34,25,34,232,545,4623,345646,56765,56,234,345,7897];

        // length 
        uint lenght = arr.length;   //19

        // push
        arr.push(111); // [10,0,222,333,898989,5555,5,34,25,34,232,545,4623,345646,56765,56,234,345,7897,111];

        // pop 
        arr.pop();

    }

    function retrunDayanimcArray() public view returns(uint[] memory){
        return arr;
    }

}