//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function Palindrome(uint n) public pure returns (bool) {
       uint reversed;
       uint original;
       uint remainder;

       original = n;
    // reversed integer is stored in reversed variable
    while (n != 0) {
        remainder = n % 10;
        reversed = reversed * 10 + remainder;
        n /= 10;
    }
    // palindrome if orignal and reversed are equal
    if (original == reversed)
    return true;
    else
    return false;   
   }
}
