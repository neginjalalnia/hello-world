pragma solidity ^0.5.13;

contract simpleMappingExample{

    mapping (uint => bool) public myMapping;
    mapping (address => bool) public myAddressMapping;

    function setvalue(uint _index) public {
        myMapping[_index] = true;


    }
    function setMyAddressToTrue() public{
        myAddressMapping[msg.sender] = true;
    }









 }