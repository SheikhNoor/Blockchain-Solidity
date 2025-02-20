// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract requireStatement{
    bool public valid;
    function isEven(uint a) public{
        valid = true;
        require(a%2==0 , "Its an odd number");
    }
}