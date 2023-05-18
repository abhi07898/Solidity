// SPDX-License-Identifier: MIT
// https://github.com/ethereum/remix-project/issues/176
pragma solidity >=0.8.2 <0.9.0;

/*string ---
string bydefault stored in blockchain, local sting will store on stack/memory/ram(storage)
*/

contract stringType {
    string public varString = "abhishek";   //it's a state variable

    function cehckString(string memory _str1) public pure returns(string memory){
        //string memory localString = "aman";  
        string memory localString = _str1;  

        return (localString); 
    }
}