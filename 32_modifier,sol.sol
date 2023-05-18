// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
 Modifier --- Reuse the code, if a contact havr more tehan 2 fucntion and in each funcitons few codes are same , so here we can use modifier 
code reusibility --

modifier is a special type funciton ---

to add function preprequisites -- 

function signature -- 
*/


contract ModifierImplimentation {

    modifier sameForLoopCode(){
        for (uint _i = 0; _i < 10; _i++) {
            //code
        }
        _;   //it will allow to run the code of thath funciton where its calleds

        //here we can write some other codes --
    }


    function fun1() public pure sameForLoopCode returns(string memory){
        /*for (uint _i = 0; _i < 10; _i++) {
            //code
        }*/

        return "returning from fun - 1 ";

    }

    function fun2() public pure sameForLoopCode returns(uint _x){
       /* for (uint _i = 0; _i < 10; _i++) {
            //code
        }*/

        _x = 20;  // return 20 is same here

    }

    function fun3() public view sameForLoopCode returns(address) {
       /* for (uint _i = 0; _i < 10; _i++) {
            //code
        }*/
        return msg.sender;
    }
}



contract Auction {

    address public owner = msg.sender;


    function startAuction() public view{
        require(owner == msg.sender, "You are not the owner");
        // code 1
    }

    function stopAuction() public view {
        require(owner == msg.sender, "You are not the owner");
        // code 2

    }

    function chekStatus() public view {
        require(owner == msg.sender, "You are not the owner");
        // code 3

    }
}



contract AuctionWIthModifier {

    address public owner = msg.sender;

    modifier onlyOwnerCanAccess() {
        require(owner == msg.sender, "You are not the owner");
        _;

    }


    function startAuction() public view onlyOwnerCanAccess{
       
        // code 1
    }

    function stopAuction() public view onlyOwnerCanAccess{
       
        // code 2

    }

    function chekStatus() public view onlyOwnerCanAccess {
       
        // code 3

    }


    uint public age = 30;

    modifier temp(uint _x) {
        age = age + _x;
        _;
    }

    function changeAge(uint _y) public temp(_y){
       
    }
}