// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract Payable{
    address public owner;

    function sendEherToAddress(address receiver) public  payable {
        payable(receiver).transfer(msg.value);
    }

    function sendEherToContract() public  payable {

    }


    function returnBalance() public view returns(uint){
        return address(this).balance;
    }


}