pragma solidity ^0.5.13;

contract StartStopUpdateExample{
        address owner;
        bool public paused;

        constructor() public{
           owner = msg.sender;

        }

    function SendMoney() public payable{
        }
        function setPaused(bool _paused) public{
            require(msg.sender == owner,"you are not  the owner");
            paused = _paused;
        }


    function withdrawMoney(address payable _to) public{
        require(msg.sender == owner,"you are not  the owner");
        require(!paused,"contract  is paused");
        _to.transfer(address(this).balance);

    }
    function destorySmartContract(address payable _to)public{
        require(msg.sender == owner,"you are not  the owner");
        selfdestruct(_to);
    }

}