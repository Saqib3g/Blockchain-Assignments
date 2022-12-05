//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract concat{
  uint[] numbers1=[10,20,30,198];
    function exist(uint num) public view returns (bool) {
      
    for (uint i = 0; i < numbers1.length; i++) {
        if (numbers1[i] == num) {
            return true;
        }
    }

    return false;
}
}
