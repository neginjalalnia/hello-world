agma solidity  ^0.8.17;

contract Loop{

    function sort(uint[] memory arr )internal pure returns(uint[]memory){
    uint length = arr.length;
    for (uint i=0 ; i<length-1;i++){
        for(uint j=0; j<length-1; j++){
            if(arr[j]>arr[j+1]){
                uint temp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=temp;
            }
        }
    }
}
 function findIndex(uint[]memory arr,uint left,uint right  ,uint x) internal pure returns(uint){

    if(right>=left){
        uint middle =left+(right-left)/2;
        if (arr[middle]==x){
            return middle;
             }
            if(arr[middle]>x){
                return findIndex (arr,left,middle+1,x);
            }
            else if (arr [middle]<x){
                 return  findIndex(arr,middle-1,right,x);
            }
    }
}
function main(uint[] memory arr,uint x) public pure returns(uint){
    uint [] memory result = sort(arr) ;
    uint index = findIndex(result, 0 , result.length-1  , x) ;
    return index;

}

}