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
     address public myAddress;
        function setAddress(address _address) public{
            myAddress = _address;
        }
        function getBalanceOfAddress() public view returns(uint){
            return myAddress.balance;

        }
        string public myString;
        function setMyString(string memory _myString) public {
            myString = _myString;
        }


