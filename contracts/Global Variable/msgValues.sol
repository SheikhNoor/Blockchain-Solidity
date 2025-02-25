// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

//block.timestamp
contract msgValue{
    function ethSendByUser() public payable  returns(uint){
        return msg.value;//timestamp variable
    }
}