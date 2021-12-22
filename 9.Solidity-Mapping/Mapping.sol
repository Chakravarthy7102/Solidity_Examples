// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Mapping {
    mapping(string => string) public currency;

    /**
        -this mapping will map a pair values
        -mapping similar to hashMap in java
        -In mapping the keys cannot be arrays or other complex non primitive datatypes
        -mapping keys are always primitive datatypes
        -mapping is always stored in contracts storage it costs gas fee

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
