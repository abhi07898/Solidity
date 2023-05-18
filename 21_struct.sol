// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Data type - strcuture (refrenc[array, enum , struct] e --- a type whihc store the address of stored data)
user define datatype, where we can store like ((datataype -- )emp --age,name,salary,address) 
bydefault stored in storage (blockchain) -
you can define it outside the contract 
*/
contract StructImplimentation{
    struct Employee{
        string name;
        uint age;
        address ethadrdess;
    }
    Employee public employee;
    constructor (string memory _name, uint _age, address _ethadrdess) {
        employee.name = _name;
        employee.age = _age;
        employee.ethadrdess = _ethadrdess;
    }



    Employee[] public emps;




    function setValues() public {
    
        Employee memory emp1 = Employee("gaurav", 21, msg.sender);    //1st way of intii,ization
        // employee = emp1;  //you can assign emp values in a variable also.
        Employee memory emp2 = Employee({ethadrdess:0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,name:"ajay",age:23});   //2nd way oif initilization
       
       //3rd way ---can't use contract level
        Employee memory emp3;   
        emp3.name = "aman";
        emp3.age = 23;
        emp3.ethadrdess = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

        // pushing the values in emp array
        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);

        // we can push value with this way also
        emps.push(Employee("ritik",99,msg.sender));

        // edit value in  array
        Employee storage emp_temp_array = emps[1];
        emp_temp_array.age=999; 
        // deleet value from array -- 
        delete emp_temp_array.ethadrdess;

        // delete emp_temp_array[2];
        // for a variable 


        // Employee memory emp_temp = employee;  //not working beacuse its store in blockchian storage
        Employee storage emp_temp = employee;
        emp_temp.name  = "Harsh";

        // we can update like this also 
        employee.name = "harsh renew";

    }

    // value initilization 

}