//SPDX-License-Identifier:GPL 3.0
pragma solidity ^0.8.0;

contract Test{
    uint[5] numbers = [2,14,6,7,19];
   
    
   function getLargest() public view returns(uint){
       
       uint store_var = 0;
        uint i;
        
       for(i=0;i<numbers.length;i++){
           if(store_var<numbers[i]){
               store_var = numbers[i];
           }
       }
       return store_var;
   }
}


