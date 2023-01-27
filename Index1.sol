pragma solidity ^0.5.17;

contract Index {

function findIndex( uint[] calldata num , uint x ) external view returns (uint){
  for (uint i=0; i<num.length;i++){
   if(num[i]== x){
     return i;
    }
}
}
}
