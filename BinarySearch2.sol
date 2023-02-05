pragma solidity ^0.8.17;


contract BinarySearch{

function binarysearch(uint[]calldata arr,uint left,uint right  ,uint x) public pure returns(uint){
    if(right>=left){
        uint middle =left+(right-left)/2;
        if (arr[middle]==x){
            return middle;
             }
            if(arr[middle]>x){
                return binarysearch(arr,left,middle+1,x);
            }
            else if (arr [middle]<x){
                 return  binarysearch(arr,middle-1,right,x);
            }
    }

}
}