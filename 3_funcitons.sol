// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

contract functionIntro{
    uint age = 20;

    function add(uint _x, uint _y) public pure returns(uint) {
        return (_x + _y);
    }

    function changeAge() public{
        age+=1;
    }

    function getAge() public view returns(uint){
        return age;
    }

    function fun() internal{
        // nothing here
    } 
}


function outSideContract(uint _x) pure returns(uint) {
    return _x * 10;
}
