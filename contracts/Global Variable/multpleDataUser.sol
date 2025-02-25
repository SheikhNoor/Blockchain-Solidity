// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract Store{
    struct value{
        address user;
        uint timestamp;
        uint value;

    }

    value[] public store;
    
    function setter() public payable {
        store.push(value(msg.sender, block.timestamp, msg.value ));
    }
 }