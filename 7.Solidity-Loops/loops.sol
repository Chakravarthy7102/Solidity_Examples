// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Loops {
    /**
        when there is an error in getting a transaction done then the trandation gets reverted and
        its previous state is retreved.

        notes:
            -Any loop in solidity should be enclosed inside a funciton else the evm will 
             throw an error.
     */

    uint256[5] public arr;

    function forLoop() public {
        for (uint256 i = 1; i < arr.length; i++) {
            arr[i - 1] = i;
        }
    }

    function whileLoop() public {
        uint256 i = 0;
        while (i < 5) {
            arr[i] = i + 1;
            i++;
        }
    }

    //Binary search in Solidity

    //uint256[10] public arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function binarySearch(uint256 num) public view returns (bool) {
        bool ans = false;
        uint256 i = 0;
        uint256 j = arr.length;
        while (i <= j) {
            uint256 mid = i + (j - i) / 2;
            if (arr[mid] == num) {
                ans = true;
                return ans;
            } else if (arr[mid] < num) {
                i = mid + 1;
            } else {
                j = mid - 1;
            }
        }
        return ans;
    }
}
