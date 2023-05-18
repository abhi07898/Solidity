// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*constant is a keyword that make value immutable , if you not want to make any changes in the value of state variable so you can use const 
like -- ownership can't be transfer
when a state varaibe is constant the cost of thata smart contract will be reduced -- 
*/ 


contract constantImplimnetation {
    address public constant ownerAddressOne = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  //378 gas
    address public ownerAddresAnothers = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  //2489 gas
}
