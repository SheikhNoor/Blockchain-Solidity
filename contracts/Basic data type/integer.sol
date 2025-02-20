// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;


contract integer {
    // int8 public num = 127; //-128 to 127
    uint256 public num1 = 256;
    // uint8 public num2= uint8(num1);

    function uncheck() public {
        unchecked{
            num1++;
        }
    }
    
}