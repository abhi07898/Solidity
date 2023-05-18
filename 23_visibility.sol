// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
visibility - defines or state varaiable and functions 
whats is visibility -- who can call and use state variable and functions 
types ----   1. public, 2. private , 3. internal , 4. external 
potential callers - funa nd state variable can call by 4 different way 

1. call state variable/ function inside a contract [itself/ contract itself]

2. derived contract (inheritence)

3. Another contract (cointract want to call fun/state variable by another cintract without any relation)

4. Outside World -- 

Private --- internal --- external -- public ( gas is increasing in same way, and in solidity developer want to make cintract less gas coster)
*/


/*
----------
private   --- within the cintract we can call sv/fun ( a single potentila caller)
----------

------------
internal ---- within the cintract and child contract (my contract and derieved contract )
------------

------------
external ----  a function of external type can call in amothr cotract and outside teh cintract (Another cintract, outside world)
------------

------------
public ----  now the sv/functions allowed mycontract, derived contract , another contract and outside world
------------

state varaible -- bydefault are internal 
functions ---- bydefault are public 
*/ 




contract  visibilityImplimentation{
    uint private x = 10; // only within the contract 
    uint internal y =100;   // within the contractand inderevide contract 
    uint public z =10000;    // every where 
    // uint external a = 232;   we cant create any external variable inside the contract


    function check1() private pure returns(string memory ) {
        return "private";
    }

    function check2() internal pure returns(string memory) {
        return "internal";
    }

    function check3() external pure returns(string memory) {
        return "external";
    }

    function check4() public pure returns(string memory) {
        return "public";
    }

    function cehckAllstateVariable() public view returns(uint){
        // return x;
        return y;

    }

    
    function cehckAllstateFun() public view returns(string memory){
        return check4();
    }
}


contract visibilityanotherContract is visibilityImplimentation {
    // uint childVar_x = x;  error 
    uint childVar_y = y;
    uint childVar_z = z;

    // string a = check1();
    string public b = check2();
    // string public c = check3();
    string public d = check4();

}

contract C{
    visibilityImplimentation obj = new visibilityImplimentation(); //creating object
    uint public a = obj.z();
    function anotherCaller() public view returns(string memory) {
        return obj.check3();
    }
}