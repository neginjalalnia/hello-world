pragma solidity ^0.5.13;


contract fallBack{

    uint x;
    mapping(address => uint) balance;

    constructor() public{
        x=10; }
    function SetX(uint _x) public returns(bool) {
        x=_x;
        return true; }

    function() public payable {
        balance[msg.sender] += msg.value;
    }
}

contract Sender
{
  function transfer() public payable
  {

      address _receiver

      _receiver.transfer(100);
  }
}