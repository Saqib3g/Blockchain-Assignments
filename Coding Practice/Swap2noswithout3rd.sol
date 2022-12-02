//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract Demo{
function Swap(uint x, uint y) public pure returns(uint,uint){
x=x+y;
y=x-y;
x=x-y;
    return (x,y);
}
}
