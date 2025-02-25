// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract store{
    struct user{
        uint ethValue;
        uint times;
    }

    mapping(address=>user) public users;

    function sendEth() public payable{
        users[msg.sender].ethValue = msg.value;
        users[msg.sender].times = block.timestamp;
    }

    function getUserDetails(address userAddress) public view returns(uint,uint){
        return(users[userAddress].ethValue, users[userAddress].times);
    }
}