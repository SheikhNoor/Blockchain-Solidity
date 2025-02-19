// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract conditionals{
    // function check(bool value) public pure returns(uint){
    //     if(value == true){
    //         return 1;
    //     }else{
    //         return 0;  
    //     }
    // }

    uint public num;
    function check1(bool value) public {
        require(value == true, "Not true");
        num = 100;
    }
    function check2(bool value) public returns(string memory){
        if(value == true){
            num = 100;
        }else{
            return "not true";  
        }
    }
}