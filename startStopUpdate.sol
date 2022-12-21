pragma solidity ^0.5.13;

contract StartStopUpdateExample{
    function SendMoney() public payable{
        address owner;



    }
      constructor() public{
            owner = msg.sender;

        }
    function withdrawMoney(address payable _to) public{
        _to.transfer(address(this).balance);
    }

}