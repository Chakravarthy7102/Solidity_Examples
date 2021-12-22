// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Solidity {
    /**
        1.In solidity the Memory represents a temperory storege that is used for storing some helper data
        2.Storage is the actual storage that your smart contract takes when it is deployed on the mainet
        3.for storege and its transactions the mainnet charges real-money known as gas fee.
    
     */
    string[] public arr = ["ETH", "BIT", "META"];

    function mem() public view {
        //volatile
        string[] memory _arr = arr;
        _arr[0] = "Ethereum";
    }

    function sto() public {
        //persistent
        //this _arr will directly point to the arr in the storage any cahnges to _arr will reflect on
        //arr.
        string[] storage _arr = arr;
        _arr[0] = "Ethereum";
    }
}
