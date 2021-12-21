pragma solidity 0.8.11;

contract FirstContract {
    uint256 simpleStorage;

    function set(uint256 x) public {
        simpleStorage = x;
    }

    function get() public view returns (uint256) {
        return simpleStorage;
    }
}
