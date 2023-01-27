pragma solidity ^0.8.17;
contract Sort{

function sort(uint[] memory arr )public pure returns(uint[]memory){
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
    return arr;
}

}