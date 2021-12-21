// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Identity {
    string name;
    uint256 age;

    constructor() {
        name = "Ravi";
        age = 25;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }

    function incrementAge() public {
        age++;
    }

    function decrementAge() public {
        age--;
    }
}
