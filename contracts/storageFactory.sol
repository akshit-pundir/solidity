// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { myContract } from "./simpleStorage.sol";

contract storageFactory  {

    myContract public simpleStorageContract;

    function createSimpleStorage() public {
       
       simpleStorageContract = new myContract(); 

    }






}



















