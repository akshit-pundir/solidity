
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract myContract {

    uint256 public myfavNumber;

    function store(uint256 _favNumber) public {
        myfavNumber = _favNumber;
    }
    
    function retrieve() public view returns(uint256){
        return myfavNumber;
    } 



}


