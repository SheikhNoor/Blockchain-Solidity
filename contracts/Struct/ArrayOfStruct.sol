// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract arrayOfSturct{
        struct Student{
        string name;
        uint roll;
        bool pass;
    }
    Student[4] public s1;

    function insert(uint index, string calldata _name , uint _roll, bool _pass) public {
        s1[index].name = _name;
        s1[index].roll = _roll;
        s1[index].pass = _pass;
    }

    function getter() public view returns(Student[4] memory){
        return  s1;
    }
}