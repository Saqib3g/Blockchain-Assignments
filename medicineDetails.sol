pragma solidity ^0.4.25; 
pragma experimental ABIEncoderV2;
contract medicineDetails{

    struct medicine {
        string medicine_name;
        string medicine_company;
        string medicine_composition;
        string medicine_code;
        string medicine_type;
        string medicine_dose;
        string medicine_description;
        string manufactured_date;
        string expiry_date;
    }
    
    mapping(uint => medicine) private medicineDetails;
    uint[] medicineID;
    uint sid =0;
    function addmedicine(string memory medicine_name, string memory medicine_company, string memory medicine_composition, string memory medicine_code, string memory medicine_type, string memory medicine_dose,string memory medicine_description,string memory manufactured_date,string memory expiry_date) public{
        medicineDetails[sid].medicine_name= medicine_name;
        medicineDetails[sid].medicine_company=medicine_company;
        medicineDetails[sid].medicine_composition= medicine_composition;
        medicineDetails[sid].medicine_code= medicine_code;
        medicineDetails[sid].medicine_type= medicine_type;
        medicineDetails[sid].medicine_dose= medicine_dose;
        medicineDetails[sid].medicine_description= medicine_description;
        medicineDetails[sid].manufactured_date= manufactured_date;
        medicineDetails[sid].expiry_date= expiry_date;
        medicineID.push(sid);
        sid +=1;
        
    }
    
    string totalTransaction;


function getTansaction() public returns (string memory) 
{
    uint arrayLength = medicineID.length;
        string[] arrr;
        uint indexx = arrayLength;
         for(uint i = 0; i < indexx; i++){
             
			 string memory medicine_name =  medicineDetails[i].medicine_name;
            
			 string memory medicine_company =  medicineDetails[i].medicine_company;
           
			 string memory medicine_composition =  medicineDetails[i].medicine_composition;
            
			 string memory medicine_code =  medicineDetails[i].medicine_code;
            
			 string memory medicine_type =  medicineDetails[i].medicine_type;
            
			 string memory medicine_dose =  medicineDetails[i].medicine_dose;
            
			 string memory medicine_description =  medicineDetails[i].medicine_description;
            
			 string memory manufactured_date =  medicineDetails[i].manufactured_date;
           
			 string memory expiry_date =  medicineDetails[i].expiry_date;
            totalTransaction=formJSON(medicine_name,medicine_company,medicine_composition,medicine_code,medicine_type,medicine_dose,medicine_description,manufactured_date,expiry_date);
             
		 }
}

function formJSON(string memory medicine_name, string memory medicine_company ,string memory medicine_composition,string memory medicine_code,string memory medicine_type,string memory medicine_dose,string memory medicine_description, string memory manufactured_date,string memory expiry_date  ) internal view returns(string memory)
{
    return string(abi.encodePacked(totalTransaction,'{"medicine_name" : "',medicine_name,'","medicine_company" :"',medicine_company,'","medicine_composition" :"',medicine_composition,'","medicine_code" :"',medicine_code,'","medicine_type" :"',medicine_type, '","medicine_dose" :"',medicine_dose,'","medicine_description" :"', medicine_description,'","manufactured_date" :"', manufactured_date,'","expiry_date" :"', expiry_date,'"},' ));
}

function queryAll() public view returns (string memory)
{
    getTansaction();
    return totalTransaction;
}
    


  
}