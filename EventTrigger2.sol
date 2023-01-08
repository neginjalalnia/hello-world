paragma solidity ^0.5.13;

contract ItemManager {

  enum SupplychainState{Created,Paid,Delivered}
     struct S_Item {
         string _identifier;
         uint _itemprice;
         ItemManager.SupplyChainstate _state;

      }
     mapping(uint => S_item) public items;
     uint itemIndex;

     event Supplychainstep(uint _itdmIndex, uint _step);

     function CreateItem(string memory _identifier, uint _itemprice) public{
      item[itemIndex]._identifier = _identifier;
      item[itemIndex]._itemPrice = _itemPrice;
      item[itemIndex]._state = SupplyChainState.paid;
      emit Supplychainstep(_itemIndex,uint(items[itemIndex]._state));
      itemIndex++;
     }
     function triggerPayment()public{
     require(item[itemIndex]._itemPrice == msg.value,"only full payments accepted");
     require(item[itemIndex]._state == SupplyChainState.Created,"Item is further in the chain");
     item[itemIndex]._state = SupplyChainState.paid;
      emit Supplychainstep(_itemIndex,uint(items[itemIndex]._state));
     }
      function triggerDelivary(uint _itemIndex) public{
       require(item[itemIndex]._state == SupplyChainState.Created,"Item is further in the chain");
        item[itemIndex]._state = SupplyChainState.Delivered;
         emit Supplychainstep(_itemIndex,uint(items[itemIndex]._state));
      }




