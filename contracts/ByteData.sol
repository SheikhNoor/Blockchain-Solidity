// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;


contract ByteData{
    bytes1 public  n1 = "a";
    bytes2 public n2 = "ab";
    bytes3 public n3 =  "abc";

    function getter() public view returns(bytes1){
        return n1;
    }

    function getterIndex(uint index) public view returns(bytes1){
        return n3[index];
    }
}