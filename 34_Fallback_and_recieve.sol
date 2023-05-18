// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
 function -- 1 fallback(data in form of bytes  + ether-while make it payable, mai work to get ether )   2 recieve (it can take only ether not data , and it's always payable) 

 we can achieve the same things with fallback , but 

 Fallback --- 
 1. it si executed when a non-existent function is called on the contract.
 2. it is required to mark external.
 3. it has no name.
 4. it has no arguments.
 5. it can't return anything.
 6. it can be defined one per contract.
 7. if not mark payabale, it will throw exception if contract recieve ethers.
 8. it's main use it to directly send the ETH to contract.
*/

contract FallBack {
    // i want to recive a ether here -(error - In order to receive Ether transfer the contract should have either 'receive' or payable 'fallback' function)

    fallback() external payable{

    }

    function checkBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract Recieve {
    // i want to recive a ether here -(error - In order to receive Ether transfer the contract should have either 'receive' or payable 'fallback' function)

    receive() external payable{

    }

    function checkBalancewhileRecive() public view returns(uint) {
        return address(this).balance;
    }
}


contract RecieveAndFallback {
    // i want to recive a ether here -(error - In order to receive Ether transfer the contract should have either 'receive' or payable 'fallback' function)
    event log(string _Whichfun,address _sender, uint _val, bytes _data);
    receive() external payable{  //if ether only here so
        emit log("recieve", msg.sender, msg.value, '');

    }
    fallback() external payable{  //if data + ether bith will here so
        emit log("fallback", msg.sender, msg.value, msg.data);
    }
    function checkBalancewhileRecive() public view returns(uint) {
        return address(this).balance;
    }
}