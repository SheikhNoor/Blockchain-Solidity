// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract Dynamic{
    uint[] public arr = [ 1,2,3,4];
    
    function insertElement(uint element) public{
        arr.push(element);
    }

    function returnElement (uint index) public view returns(uint){
        return arr[index];
    }

    function removeElement() public{
        arr.pop(); // last element
    }

    function lengthOfArray() public view returns(uint){
        return arr.length;
    }

    function removeAllElement() public view returns(uint[] memory){
        return arr;
    }
}