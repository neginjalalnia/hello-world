pragma solidity ^0.5.17;

contract Index {

 uint[] num=[5,1,9,8,3,7];
function findIndex( uint x) external view returns (uint){
  for (uint i=0; i<num.length;i++){

   if(num[i]== x){



     return i;

    }


}
}
}