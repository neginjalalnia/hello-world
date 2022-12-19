pragma solidity ^0.5.13;

contract WorkingWithVariables{
    uint256 public myUnit;
    function setMyUint(uint _myUint) public{
        myUnit= _myUint;

    }
    bool public myBool;
    function setMyBool(bool _myBool) public{
        myBool= _myBool;
    }
    uint8 public myUnit8;
    function incrementUnit() public{
        myUnit8++;
    }
    function decrementUnit() public{
        myUnit8--;
    }
}