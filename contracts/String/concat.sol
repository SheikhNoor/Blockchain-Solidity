// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConcatString {
    function concatString(string memory s1, string memory s2) public pure returns (string memory) {
        return string.concat(s1, s2);
    }
}