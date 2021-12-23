// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;

contract Modifiers {
    /**
        1.public modifiers are avaialble open for other contracts and open envinorment
          and they can accesed by outside the contract within the contract and also in
          a inherited contract.
     */
    function publicFun() public pure returns (uint256) {
        return 1;
    }

    /**
        2.private modifier are private to there own parent contract or scope they cannot be accesed by
          outside the contract they are only available with in the contract
     */

    function privateFun() private pure returns (uint256) {
        return 2;
    }

    /**
        3.Internal modifier gives only acces to that particular object inside contract and
          its inherited ones
     */

    function internalFun() internal pure returns (uint256) {
        return 3;
    }

    /**
        4.External contractrs are availble to everything execpt the contract they are present 
          and the inherited ones
     */

    function externalFun() external pure returns (uint256) {
        return 4;
    }

    contract Inheritance is Modifiers{
    uint public publicValue=publicFun();
    uint public internalValue=internalFun();    
    }

    contract Sample{
        //uint public publicValue=publicFun();
        Modifiers obj=new Modifiers();

        uint public nice=obj.publicFun();
        uint public nice2=obj.externalFun();
        

    }

}
