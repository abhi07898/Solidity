// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Way 
1. direct calling 
2. calling by super methods 
*/


contract A{
    event log(string name, uint age);
    function fun1() public virtual{
        emit log("From Contract A - fun1", 21);
    }

    function fun2() public virtual{
        emit log("From Contract A - fun2", 23);
    }
}

contract B is A{
    function fun1() public override virtual{
        emit log("From Contract B - fun1", 21); 
        A.fun1();  // 1st way (it will direct call fun1 from cintract A) -- direct calling
    }

    function fun2() public override virtual{
        emit log("From Contract B - fun2", 23);
        super.fun2();  //2md way (it will check this function i all parent contract and if fine it will use that ine only)
    }
}

contract C is A{
    function fun1() public override virtual{
        emit log("From Contract C - fun1", 21);
    }

    function fun2() public override virtual{
        emit log("From Contract C - fun2", 23);
    }
}

contract D is B,C{
    function fun1() public override(B,C){
        emit log("From Contract D - fun1", 21);
        B.fun1();
    }

    function fun2() public override(B,C){
        emit log("From Contract D - fun2", 23);
        super.fun2();
    }
}