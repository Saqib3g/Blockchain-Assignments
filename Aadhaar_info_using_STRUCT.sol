//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0<0.9.0;
contract demo{
    struct Aadhaar{
        string name;
        uint aadhaar_number;
        string gender;
        string addr;
    }
    Aadhaar public a1;
    function insert(string memory _name,uint _aadhaar__number,string memory _gender,string memory _addr)public {
        a1=Aadhaar(_name,_aadhaar__number,_gender,_addr);
    }
}
