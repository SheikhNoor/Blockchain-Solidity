// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract employeeRegistry{
        struct Employee{
            uint256 id;
            string name;
            uint256 salary;
    }
    //dymnamic array
    Employee[] public emp;

    function insert(uint256 Employee_Id, string calldata Employee_Name , uint256 Employee_Salary) public {
        emp.push(Employee(Employee_Id,Employee_Name,Employee_Salary));
    }

//dynamic array
    function getEmployee(uint256 index) public view returns(Employee memory){
        return  emp[index];
    }
}