// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Global {
    /**
        Soldity offers some great inbuild global variables that gives info about the 
        current transaction below are the some of the examples and to explore more..
        visit https://docs.soliditylang.org/en/v0.5.3/units-and-global-variables.html
     */

    function getter()
        public
        view
        returns (
            uint256 block_no,
            uint256 timestamp,
            address msgSender,
            address origin,
            uint256 price
        )
    {
        return (
            block.number,
            block.timestamp,
            msg.sender,
            tx.origin,
            tx.gasprice
        );
    }
}
