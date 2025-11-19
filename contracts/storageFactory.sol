// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { myContract } from "./simpleStorage.sol";

contract storageFactory {
    myContract[] public simpleStorageContractList;

    function createSimpleStorage() public {
        myContract newSimpleStorage = new myContract();
        simpleStorageContractList.push(newSimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIdx,uint256 _newSimpleStorageNum) public {
        
        myContract mySimpleStorage = simpleStorageContractList[_simpleStorageIdx];
        mySimpleStorage.store(_newSimpleStorageNum);

    }

    function sfGet(uint256 _simpleStorageIdx) public view returns(uint256) {  
        myContract mySimpleStorage = simpleStorageContractList[_simpleStorageIdx];
        return  mySimpleStorage.retrieve();  
    }

}
