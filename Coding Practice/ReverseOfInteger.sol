//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function ReverseInteger(uint n) public pure returns (uint) {
    uint reverse;
    uint remainder;
     while (n != 0) {
    remainder = n % 10;
    reverse = reverse * 10 + remainder;
    n /= 10;
  }
  return reverse;
   }
}
