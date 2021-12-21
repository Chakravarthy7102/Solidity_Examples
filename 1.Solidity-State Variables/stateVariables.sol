// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

/*
    -solidity is a statically types language so all the assigmnets are done
     during the compile time.
*/

contract State {
    /* there are three ways to intialize the state variables in solidity

       1.you can assign value to a varible at its decalration
       2.inside a contructor
       3.by using a setter function
       in any form the evm will trhow an error
       note:
       -by making a state varialble public it gets a getter method assigned 
       by the compiler itself.
       -default values set by the solidity for unsigned int is 0

       important :
       -in main net when our contract gets deployed for every state variable the main net
        will charge some gas fee so you should be considerate on using these state varialbles
        because of ecomomy factors..and state varibles are storred on mainnet permanently

    */
    uint256 public value = 20;

    constructor() {
        value = 30;
    }

    //this function will set 55 as values value
    function setValue() public {
        value = 55;
    }
}
