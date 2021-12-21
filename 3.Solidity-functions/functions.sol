// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Funtions {
    //when you give public for a state variable then the variable get
    //assigned with a getter method.
    uint8 stock = 0;
    string name;

    /*note:
        getter methods does not cost any gas fee 
        but the setter methods does cost gas fee.
*/
    function getName() public view returns (string memory) {
        return name;
    }

    function getStock() public view returns (uint256) {
        return stock;
    }

    /*
        setter functions cost gas fee because it creates a transaction 
        that need to be mined and they change the blockchain.
 */
    function setter(uint8 priceIncrese, string memory name1)
        public
        returns (uint8)
    {
        stock = priceIncrese;
        name = name1;
        return stock;
    }
}
