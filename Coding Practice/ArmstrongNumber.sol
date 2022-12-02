//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function isPrime(uint num) public pure returns (uint) {
       uint remainder;
       uint originalNum;
       uint result;
       originalNum=num;
       while(originalNum !=0){
       // remainder contains the last digit
        remainder = originalNum % 10;
        result += remainder * remainder * remainder;
        
       // removing last digit from the orignal number
       originalNum /= 10;
    }

    if (result == num)
    {
        return 1;
    }
else{
        return 0;
}
        
    }
}
