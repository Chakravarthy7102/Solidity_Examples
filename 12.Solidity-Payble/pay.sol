// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Pay {
    //this function will get the ether to the current account
    function payEther() public payable {}

    //this function will return the total balance left in the wallet
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //with this funtion you can tranfer eth to respective payable address
    function sendEtherAccount(address payable _to) public payable {
        bool sent = _to.send(2);
        require(sent, "Failed to send Ether");
    }
}
