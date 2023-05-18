// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Events -- 
if you want to store data in blockchain(transaction logs) in minimum gas amount -- 

usecase - output


uses of indexig ---
---------------------
--
*/

contract EventsImplimentation {
    // decleration -- 
    event balance(address accoutn_address, string message, uint eth_value);  //name is ued only for self understanding thta will newver store in blockchina 
    // simple/ transactional funciton will never return any value
    function setDataInsideEvent(uint _eth_val) public {
        emit balance(msg.sender, "has value", _eth_val);
        // check the transaction logs for the value emit or not in blockchain
    }
}
// prepare a smart contract to chat among two address with indexing(if you want to fetch the data of specific address of a specifc address -- you can use indexed keyword)
// index will only used with three args value --
contract chatApp {
    event chatData(address indexed _from, address _to, string _sharedMessage);

    function chatSendMessage(address _to, string memory _sharedMessage) public  {
        emit chatData(msg.sender, _to, _sharedMessage);
    }
}