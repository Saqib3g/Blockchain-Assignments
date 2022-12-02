//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function SumOfDigits(uint num) public pure returns (uint) {
    uint sum;
   while(num!=0)
    {
        //Find last digit of num and add to sum 
        sum += num % 10;
        // Remove last digit from num 
        num = num / 10;
    }
    return sum;
   }
}
