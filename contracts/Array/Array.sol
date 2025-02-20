// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Array{
    uint[5] public myArray = [1,2,3];


    // lets insert the  element in array
    function insertElement(uint index , uint element) public{
        myArray[index] = element;
    }

    //lets return the array 
    function returnElement(uint index) public view returns(uint){
        return myArray[index];
    }

    function returnAllElements() public view returns(uint[5] memory){
        return myArray;
    }

}