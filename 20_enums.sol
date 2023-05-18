// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Enums -- (important in solidity)
enum is a user define data type -   

---------bool--------
not intiate- false(0) else true(1)
---------------------

if we want more then one choices -- (oerder statsu - pending, processing, inprogress, paymentdone, complete, shipped, accept, cancel)

profit --
1. maintenance smart contract is easy (assing number to name, so we ahcieve here readibility ) 
2. we can control a funciton with enum(0/1)
3. it's make our code less bugger.
4. enum name start with capital letter -St--, Num---,
you can define it outside the contract 
*/


contract EnumImplimenation{
    enum Status{
        pending,            //0
        shipped,            //1
        completed,          //2
        accpeted,           //3
        rejected,           //4
        cancelled           //5
    }

    Status statusVarName;
    function getStatus() public view returns(Status) {
        return statusVarName;
    }

    function setStatus(Status _statusname) public {
        
        statusVarName = _statusname;
    }

    function setRejectFun() public {
        statusVarName = Status.rejected;
    }

    function reset() public {
        delete statusVarName;
    }

}