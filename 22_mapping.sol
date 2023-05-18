// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;
/*
Data type - mapping 
it's having key and value pair ---
mapping can't use in file level (level of writing contract) [means - can;t declrea outsode teh contract]
can't declare in funciton 
*/

contract MappingImplimantation {
    mapping(uint => string) public emp_id;


    function setIds() public {
        emp_id[31] = "Gaurav";
        emp_id[27] = "Aman";
        emp_id[21] = "Rahul";
        emp_id[1] = "Anjali";
        emp_id[24] = "Ankur";
    }

    function getId(uint _ids) public view returns(string memory) {
        return emp_id[_ids];
    }


}

// creating strcuyure on file level

struct donar_details{
    string name;
    uint age;
    string donar_address;
    uint donation_amount;
}
contract AdvanceMapping {
    mapping(address=> donar_details) public account_info;


    function detDonarDetialsByItself(string memory _donar_name, uint _donar_age, string memory _donar_adress, uint _donation_amount) public {
        // account_info[msg.sender] = donar_details(_donar_name, _donar_age, _donar_adress, _donation_amount);

        account_info[msg.sender] = donar_details(_donar_name, _donar_age, _donar_adress, account_info[msg.sender].donation_amount+_donation_amount);

    }
    function delete_Info() public {
        delete account_info[msg.sender];
    }
}