pragma solidity ^0.5.13;


contract simpleWallet{

    address public owner;
    constructor() public{
        owner= msg.sender;
    }
     modifier onlyOwner() {
        require(owner==msg.sender,"You are not allowed!");
         _;
         }

    function withdrawMoney(address payable _to, uint _amount ) public onlyOwner{
        require(owner==msg.sender,"You are not allowed!");
          _to.transfer( _amount );
    }





    function () external payable{
