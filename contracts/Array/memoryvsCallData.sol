// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract MomeryVsCalldata{
    uint[5] public arr = [ 2,2,3];//storage

    //memory- use in mutable case
    function multiplyBy2Index0(uint[3] memory num) public pure returns(uint[3] memory){
        num[0] = 2*num[0];//mutable
        return num;
    }

    //u should only use the calldata only for argument purpose , u should not the using for the return purpose***

    
    //readable 
    //calldata- use in immutable case
    function passingArray(uint[3] calldata num) public pure returns(uint){
        uint a = num[0];
        a= a*2;
        return a;
    }
    
    function insertElement(uint index, uint element) public{
        arr[index] = element;
    }

    function returnElement(uint index) public view returns(uint){
        return arr[index];
    }

    function returnAllElemenst() public view returns(uint[5] memory){
        return arr;
    }

}