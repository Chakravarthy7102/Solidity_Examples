// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

//A struct is simlar to concepts in c struct and this can be decalresd in global scope to all the
//contracts in the sol file

struct Crypto {
    string name;
    string currency;
    uint256 amount;
    bool bought;
}

contract Structs {
    Crypto public crypto;

    constructor(
        string memory _name,
        string memory _currency,
        uint256 _amount,
        bool _bought
    ) {
        crypto.name = _name;
        crypto.currency = _currency;
        crypto.amount = _amount;
        crypto.bought = _bought;
    }

    function getDetails() public view returns (Crypto memory) {
        return crypto;
    }

    function change(
        string memory _name,
        string memory _currency,
        uint256 _amount,
        bool _bought
    ) public returns (Crypto memory) {
        //this is also simlar to consepts os objests in js and dictories in python
        Crypto memory new_crypto = Crypto({
            name: _name,
            currency: _currency,
            amount: _amount,
            bought: _bought
        });

        crypto = new_crypto;
        return new_crypto;
    }
}
