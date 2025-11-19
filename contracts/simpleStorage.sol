
// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract myContract {

    uint256 myfavNumber;
    // uint256[] listOfFavNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person(7,"Pat");

    // dynamic array
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavNumber;    

    function store(uint256 _favNumber) public virtual {
        myfavNumber = _favNumber;
    }
    
    
    function retrieve() public view returns(uint256){
        return myfavNumber;
    } 

    function addPerson(uint256 num,string memory _name) public {

        listOfPeople.push( Person(num,_name) );
        nameToFavNumber[_name] = num;
    }

}


