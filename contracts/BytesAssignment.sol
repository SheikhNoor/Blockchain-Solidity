// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract BYtesass{
    bytes1 public singleByte;
    bytes2 public twoBytes;

    constructor() {
        //Initialize twoBytes with the ASCII codes for 'A'

        singleByte = 'A';

        //Initialize twoBytes with the ASCII codes for 'B' and 'C' 
        twoBytes= 'BC';
    }

    function updateSingleByte(bytes1 newByte) public {
        //update the value of singleByte with the provided byte
        singleByte = newByte;
    }

    function updateTwoByte(bytes2 newBytes) public {
        // Update the value of twoByte with the provided byte
        twoBytes = newBytes;

    }
}