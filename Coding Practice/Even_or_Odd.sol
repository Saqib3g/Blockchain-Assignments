//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{
function EvenOdd(uint n) public pure returns(uint){
    if(n%2==0)
    {
    return 1;
    }
    else {
return 0;
    }
}
}
