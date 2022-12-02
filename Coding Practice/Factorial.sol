//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function Factorial(uint number) public pure returns (uint) {
    uint i;
    uint fact=1;
     for(i=1;i<=number;i++){    
      fact=fact*i;    
  }    
   return fact;
   }
}
