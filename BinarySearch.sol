ragma solidity ^0.8.17;


contract BinarySearch{

function binarysearch(uint[]calldata arr,uint l,uint r  ,uint x) external view returns(uint){
    if(r>=l){
        uint middle =l+(r-l)/2;
        if (arr[middle]==x){
            return middle;
             }
            if(arr[middle]>x){
                return binarysearch(arr,middle+1,l,x);
            }
            else if (arr [middle]<x){
                 return  binarysearch(arr,middle-1,r,x);
            }
    }
}

}