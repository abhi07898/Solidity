// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*
3 way to share ethr from a cintract to other account/contract 

1. send function  (used for send there from any addres --acount address or smart contract, will get bool valu while send ether from any baddress )
    send funciton limit --1.  max gas amount should't 2300 or greater  2. if tranaaction faile the used gas can't be revert 
                          3. state valriable will not changes the value while failed the transfer in send function 
    avoid to use send, if still you want to use so please apply require check.


2. transfer function
    limit -2300 gas , no any response in boll like send 
    it will revert the changes in state varaibe and gas value while failed the transaction 

3. call function - 
    here we need to decide teh gas lmimt 
    response - 
            1. bool
            2. data in bytes formate 
    we need to use require here, bcs it's not retriving the state varaiabe and changes like send funciotn 
*/


contract sendEthStaticAddress {
   
    address payable public getter = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

    // for store the ether in this contract

    receive() external payable {

    }

    // function for check balance 
    function checkBalane() public view returns(uint) {
        return address(this).balance;
    }


    // send ether to any other account

    function SENDetherTOaddress() public {
       bool sent =  getter.send(1000000000000000000);
       require(sent, "transaction is failled");
    }

    function TRANSFERetherTOaddress() public {
         getter.transfer(1000000000000000000);
    }

    function CALLetherTOaddress() public {
        // if we are not setting gas value here so the default value will be remix default gas value , otherwise we can set by himself
        (bool sent,) = getter.call{value:1000000000000000000}("");
         require(sent, "transaction is failled");
    } 
}


contract sendEthdayanamicAddress {

    // for store the ether in this contract

    receive() external payable {

    }

    // function for check balance 
    function checkBalane() public view returns(uint) {
        return address(this).balance;
    }


    // send ether to any other account

    function SENDetherTOaddress(address payable getter) public {
       bool sent =  getter.send(1000000000000000000);
       require(sent, "transaction is failled");
    }

    function TRANSFERetherTOaddress(address payable getter) public {
         getter.transfer(1000000000000000000);
    }

    function CALLetherTOaddress(address payable getter) public {
        // if we are not setting gas value here so the default value will be remix default gas value , otherwise we can set by himself
        (bool sent,) = getter.call{value:1000000000000000000}("");
         require(sent, "transaction is failled");
    } 
}


contract sendEthdayanamicAddressWithdaynamicAmount {

    event log(uint value);
    receive() external payable {

    }

    // function for check balance 
    function checkBalane() public view returns(uint) {
        return address(this).balance;
    }


    // send ether to any other account

    function SENDetherTOaddress(address payable getter) public payable {
        emit log(msg.value);
       bool sent =  getter.send(msg.value);
       require(sent, "transaction is failled");
    }

    function TRANSFERetherTOaddress(address payable getter) public payable {
         emit log(msg.value);
         getter.transfer(msg.value);
    }

    function CALLetherTOaddress(address payable getter) public payable {
         emit log(msg.value);
        // if we are not setting gas value here so the default value will be remix default gas value , otherwise we can set by himself
        (bool sent,) = getter.call{value:msg.value}("");
         require(sent, "transaction is failled");
    } 
}


contract GetETHvaluefromOtherCotract {
    receive() external payable{}
    // function for check balance 
    function checkBalane() public view returns(uint) {
        return address(this).balance;
    }

}