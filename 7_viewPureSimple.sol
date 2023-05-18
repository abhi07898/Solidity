// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
view --- means read only function --- blockchain, state varaible and global varaibles 
pure --- not read and not write 
simple funciton --- can changes the value of state 
*/

contract viewPureAndSimple{
    uint public age = 20;
// normal gas cost 
    function viewFunction() public view returns(uint) {
        return age;  // here it;s reading the value of age and returning 
    }

// gas cost is lowest here 
    function pureFunciton_one() public pure returns(uint) {
        return 1;
    }

    function pureFunciton_another(uint _x) public pure returns(uint) {
        return _x;
    }
// mostly gas cost is consumed here 

    function simpleFunciton() public {
        age = age+10;
    }

    function dummy() public view returns(uint){
       return age+10;
    }

}