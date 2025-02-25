// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

//block.timestamp
contract global{
    function returnTime() public view returns(uint){
        return block.timestamp;
    }
}