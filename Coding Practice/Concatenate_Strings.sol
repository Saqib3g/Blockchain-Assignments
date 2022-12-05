//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract concat{
    function concatenate(string memory a,string memory b) public pure returns (string memory){
        return string(abi.encodePacked(a,' ',b));
    } 
}

OR

pragma solidity ^0.8.0;
contract concat {
    function concatenate(string memory a,string memory b) public pure returns (string memory){
        return string(bytes.concat(bytes(a), " ", bytes(b)));
    } 
}
