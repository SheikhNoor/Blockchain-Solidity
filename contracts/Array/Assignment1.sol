// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

// write a solidity smart contract thet manages a list of number.
// the contract should allow the following functionalities.
// 1. add a number to the list.
// 2. get the total count of numbers in the lists.
// 3. get the number at a specific iindex in the list.
// 4. replace this program for both fixed size and dynzmic

// make this program for both fixed size and dynamic.

contract assign{
    uint[5] public arr= [1,2,3];
    uint sum;
    

    function insertElement(uint index, uint element) public{
        arr[index] = element;
    }

    function returnElement(uint index) public view returns(uint){
        return arr[index];
    }

    function getCount() public view returns(uint){
        return arr.length;
    }

    

}