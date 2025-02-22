// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract String{
    string public str = "hello world";

    function setter(string calldata _str) public {
        str = _str;
    }

    function getter() public view returns(string memory){
        return str;
    }
}