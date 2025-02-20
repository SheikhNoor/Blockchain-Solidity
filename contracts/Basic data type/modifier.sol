// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract Modifier{
    uint public num = 10;

    // modifier onlyValid(){
    //     require(true==true, "Not valid");
    //     num = 1;
    //     _;
    // }

    // function check1() public onlyValid(){
    //     num = 100;
    // }

    // function check2() public onlyValid(){
    //     num = 200;
    // }

    // function check3() public onlyValid(){
    //     num = 300;
    // }

    //lets do by manually
        modifier onlyValid(bool value){
        require(true==value, "Not valid");
        num = 1;
        _;
    }

    function check1(bool value) public onlyValid(value){
        num = 100;
    }

    function check2(bool value) public onlyValid(value){
        num = 200;
    }

    function check3(bool value) public onlyValid(value){
        num = 300;
    }
}