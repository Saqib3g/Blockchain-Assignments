//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{

   function isPrime(uint n) public pure returns (uint) {
        for (uint i = 2; i < n; i++) {
            if (n % i == 0) {
                return 0;
            }
        }
        return 1;
    }
}
