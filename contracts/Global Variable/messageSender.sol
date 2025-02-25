// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

//message.sender
contract message{
    function callerAddress() public view returns(address){
        return msg.sender;//timestamp variable
    }
}