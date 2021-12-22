// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Mapping {
    mapping(string => string) public currency;

    /**
        -this mapping will map a pair values
        -mapping similar to hashMap in java

 */
    function setter(string memory _currency, string memory name) public {
        currency[_currency] = name;
    }

    //using struct in mapping
    struct Currency {
        string name;
        string currency;
    }

    mapping(uint256 => Currency) public map;

    function setCurrency(
        uint256 _id,
        string memory _name,
        string memory _currency
    ) public {
        map[_id] = Currency({name: _name, currency: _currency});
    }
}
