// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Local {
    /*
       - local variables are only specific to the defined itself so they are not stored in stroge
        rather stored in stack so here
       - state vaiables are defined in the contract scope and they cost gas.

        -pure :
               n FP, to describe a function as "pure" is to say all the data the function is
               concerned with is either passed in or defined in its scope. So it means
               that pure functions in Solidity are not allowed to even read 
               (let alone write) storage data.
        -memory :
                memory keyword used to specify that the memory location for this variable is
                stored in stack memory.
                -this keyword is not allowed at contract level beacuse all the contract level 
                varaibles must store on the storage rather on stack

        Notes:
             -these local varibles doesnt const any gas fee because they are not stored on The
              blockchain 
             -there are some types that will default store on the storage so you need to specify the
              "memory" keyword
                

    */
    uint256 eth = 245; //state variable

    function local() public pure returns (string memory) {
        string memory wallet = "metamask"; //local variable
        return wallet;
    }
}
