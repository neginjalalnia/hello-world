ragma solidity  ^0.8.17;

contract Loop{

    function sort(uint[] memory arr )internal pure returns(uint[]memory){
    uint length = arr.length;
    for (uint i=0 ; i<length;i++){
        for(uint j=i+1; j<length; j++){
            if(arr[i]>arr[j]){
                uint temp=arr[j];
                arr[j]=arr[i];
                arr[i]=temp;
            }
        }
    }
    return arr;
}
function findIndex2( uint[] memory num , uint x ) internal pure returns (uint){
  for (uint i=0; i<num.length;i++){
   if(num[i]== x){
     return i;
    }
}
}

function main(uint[] memory arr,uint x) public pure returns(uint [] memory,uint){
    uint [] memory result = sort(arr) ;
    uint index = findIndex2(arr, x) ;
    return (result,index);
}
}