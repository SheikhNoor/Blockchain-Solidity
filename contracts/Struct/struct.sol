// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Struct{
    struct Student{
        string name;
        uint roll;
        bool pass;
    }
    Student public s1;

    //intiallise the data 
    function insert(string calldata _name, uint _roll, bool _pass) public{
        s1.name = _name;
        s1.roll =  _roll;
        s1.pass = _pass;
    }

    function getterName() public view returns(string memory){
        return  s1.name;
    }

    function getterRoll() public view returns(uint){
        return  s1.roll;
    }

    function getterPass() public view returns(bool){
        return  s1.pass;
    }

    function getter() public view returns(Student memory){
        return  s1;
    }
}