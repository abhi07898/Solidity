// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;


/*variable that created isnide the function is known as local variable -
 state varaible stored in blockchain but hte local varaibles store in our RAM in form of stack ---
 the params of funcitons is also known a slocal variables*/
contract localVariable{
    uint public age;
    bool public boolTemp;
    address public addressTemp;


    function fun(uint _x, bool _y, address _z) public returns(uint, bool) {
        uint localVar_i = 29;
        bool localBool_b = true;

        localVar_i+=29;
        localBool_b = false;
// applying the local variable values to state variables
        age = _x;
        boolTemp = _y;
        addressTemp = _z;

        return(localVar_i, localBool_b);
    }
}