// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract nestedMapping{
     mapping(address=>mapping (address=> bool)) public ownership;

     function provideOwnership(address sender, address reciever) public{
        ownership[sender][reciever] = true;
     }

    function takeOwnership(address sender, address reciever) public{
        ownership[sender][reciever] = false;
     }

    function checkOwnership(address sender, address reciever) public view returns(bool){
        return ownership[sender][reciever];
     }
}