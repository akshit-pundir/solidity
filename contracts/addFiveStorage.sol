// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { myContract } from "./simpleStorage.sol";

contract addFiveStorage is myContract {

    function store(uint256 _newNumber) public override {
        myfavNumber = _newNumber + 5 ;
    }




}






