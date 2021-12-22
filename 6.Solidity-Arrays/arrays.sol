// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Arrays {
    //static array or Fixed array.
    uint256[5] public arr = [1, 2, 3, 4, 5];

    function setter(uint256 index, uint256 value) public {
        arr[index] = value;
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    //dynamicArray

    uint256[] public arr1;

    function pushValue(uint256 value) public {
        arr1.push(value);
    }

    function removeEle() public {
        arr1.pop();
    }

    function len() public view returns (uint256) {
        return arr1.length;
    }

    //***************************************************************************************** */

    /**Byte Array */
    /**
        -any value that stores in a byte array is in the form of Hexadecimal format.
        -Bytes array cannot be modified.
        -if the place is empty then the value is zero
     */

    bytes3 public b3;
    bytes2 public b2;

    function setter() public {
        b3 = "abc";
        b2 = "ab";
    }

    bytes public arr3 = "abc";

    function pushElement(bytes1 value) public {
        arr3.push(value);
    }

    function getElement(uint256 index) public view returns (bytes1) {
        return arr3[index];
    }

    function remove() public {
        arr3.pop();
    }
}
