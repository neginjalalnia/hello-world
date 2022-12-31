pragma solidity ^0.5.13;

contract Allowece is Ownable{

     mapping(address => uint) public allowance;

     function addAllowance(address _who , uint _amount) public onlyOwner{
        allowance[_who]= _amount;
    }
    modifier ownerOrAllowed(uint _amount){
        require(isOwner() || allowance[ msg.sender ]>= _amount,"you are not allowed");
        _;

    }
    function reduceAllowance(address _who,uint _amount) internal {
        allowance[_who]= _amount;


}

contract SimpleWallet is Allowece {

    event MoneySent(address indexed _beneficiary,uint _amount);
    event MoneyReceived(address indexed _from, uint  _amount);

    function withdrawMoney(address payable _to, uint _amount ) public ownerOrAllowed(_amount){
        require(_amount<=address(this).balance,"There are not enough funds stored in the smart contract");
        if(!isOwner()){
            reduceAllowance(msg.sender,_amount);
        }
        emit MoneySent(_to,_amount);
          _to.transfer( _amount );
    }

    function () external payable{
        emit MoneyReceived(msg.sender,msg.value);



    }



}