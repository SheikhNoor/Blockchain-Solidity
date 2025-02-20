// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract demo{
    function f1() public pure returns(uint){
        return 1;
    }

    function f2() private  pure returns(uint){
        return 2;
    }

    function f3() external  pure returns(uint){
        return 3;
    }

    function f4() internal pure returns(uint){
        return 4;
    }
}


//derive contract
contract Child is demo{
    function returnValue() public pure returns (uint){
        return f4();//expect f3 call every, f2 is private so its not visible
    }
}

//other contract
contract otherContract{
    demo obj = new demo();
    uint public  x= obj.f1();//in this private and internal not visible
}