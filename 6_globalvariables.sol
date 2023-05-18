// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*predefine variables is knowns as like (msg.sender) ----- funcitons exists in global workspace and its stored infor liek blockchian and transactions
url - https://www.tutorialspoint.com/solidity/solidity_variables.htm 
    - https://docs.soliditylang.org/en/v0.8.17/units-and-global-variables.html
*/


contract globalVariables {
    address public myaddress = msg.sender;
    uint public time = block.timestamp;
    uint public diffuciliy = block.difficulty;
    uint public gasCost = tx.gasprice;
}