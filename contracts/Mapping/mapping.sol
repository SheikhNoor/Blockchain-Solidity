// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract Mapping{
    mapping(uint=>string) public map;

    function insert(uint key, string calldata value) public {
        map[key] = value;
    }

    function returnData(uint key) public view returns(string memory){
        return map[key];
    }
}