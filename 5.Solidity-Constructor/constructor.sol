// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Funtions {
    /*
        A constructor will get excecuted only once and its an entry point to the
        contract. if you dont create a constructor then it will get compiled with
        a default constructor.
     */
    string public userName;

    constructor(string memory name) {
        userName = name;
    }
}
