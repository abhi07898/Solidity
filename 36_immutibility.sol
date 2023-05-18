// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
create a state variable that value can't be changed -- (while insreting the value dayanamic) 
you can't change the vaue of varaible while using immutubility 
we can use inline(const) and dayanamic both 
*/

contract ImmutableImplimentation {
    // -- inline

    // address public immutable owner = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;   

    //dayanamic
    address public immutable owner;
    address public constant owner2 = address(1);
    address public owner3 = address(1);

    constructor (address  _owner) {
        owner = _owner;
    }

    //cehck the gas cost here also, while execute this.

    function I() public view returns(address) {
        return owner;
    }

    function C() public pure returns(address) {
        return owner2;
    }

    function S() public view returns(address) {
        return owner3;
    }


}
