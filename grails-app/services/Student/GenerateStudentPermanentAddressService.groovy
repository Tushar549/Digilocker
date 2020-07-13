package Student

import DigilockerSecurity.User

class GenerateStudentPermanentAddressService {
    StudentPermanentAddress studentPermanentAddress;

    def serviceMethod() {

    }
    
    def generateStudentPermanentAddress(def params){
        
        studentPermanentAddress = new StudentPermanentAddress();
               //reference been created for the existing user
        setValues(params);
        studentPermanentAddress.save();
        
    }
    
    private def setValues(def params){
        
        studentPermanentAddress.setFlatNo(params.permanentAddress);
        studentPermanentAddress.setCity(params.permanentCity);
        studentPermanentAddress.setDistrict(params.permanentDistrict);
        studentPermanentAddress.setState(params.permanentState);
        studentPermanentAddress.setPincode(params.permanentPinCode);
        
    }
}
