pragma solidity ^0.5.13;


contract simpleWallet is Ownable {
    mapping(address => uint) public allowance;


    function addAllowance(address _who , uint _amount) public onlyOwner{
        allowance[_who]= _amount;
    }
    modifier ownerOrAllowed(uint _amount){
        require(isOwner() || allowance[ msg.sender ]>= _amount,"you are not allowed");
        _;

    }




    function withdrawMoney(address payable _to, uint _amount ) public ownerOrAllowed(_amount){
        require(owner==msg.sender,"You are not allowed!");
          _to.transfer( _amount );
    }
