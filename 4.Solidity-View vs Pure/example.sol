// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Funtions {
    string wallet;

    /*
        "view" keyword gives the function access to the state variable in readonly 
        mode and with this a function cannot mute the value of the state variable

    */
    function getter() public view returns (string memory) {
        return wallet;
    }

    /*
        "pure" keyword does not allow any acces to the state variables that means 
        a function cannot read or write a state variable when it is specified with 
        "pure" keyword
    */
    function getter2() public pure returns (uint256) {
        uint256 value = 4000;
        return value;
    }

    /*
        if want to change the value of the state value then you should drop the
        both keywords from the function defination
    */

    function setter() public returns (string memory) {
        wallet = "meta mask";
        return wallet;
    }
}
