//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function GreatestOfThree(uint num1, uint num2,uint num3) public pure returns (uint) {
       if(num1 > num2 && num1 > num3)
       return num1;
   else if (num2 > num1 && num2 > num3)
       return num2;
   else 
   return num3;
   }
}
