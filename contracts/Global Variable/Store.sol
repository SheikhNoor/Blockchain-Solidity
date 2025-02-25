// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract store{
    function sendEth() public  view  returns(address){
        return msg.sender;
    }

    function ethValue() public payable returns(uint){
        return msg.value;
    }
    function timeSendEth() public view returns(uint){
        return block.timestamp;
    }
}