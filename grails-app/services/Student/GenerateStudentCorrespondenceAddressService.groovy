package Student

import DigilockerSecurity.User

class GenerateStudentCorrespondenceAddressService {

    StudentCorrespondenceAddress studentCorrespondenceAddress;
    
    def serviceMethod() {

    }
    def generateStudentCorrespondenceAddress(def params){
        
        studentCorrespondenceAddress = new StudentCorrespondenceAddress();
      //             //reference been created for the existing user
        setValues(params);
        studentCorrespondenceAddress.save();
        
    }
    
    private def setValues(def params){
        studentCorrespondenceAddress.setFlatNo(params.correspondenceAddress);
        studentCorrespondenceAddress.setCity(params.correspondenceCity);
        studentCorrespondenceAddress.setDistrict(params.correspondenceDistrict);
        studentCorrespondenceAddress.setState(params.correspondenceState);
        studentCorrespondenceAddress.setPincode(params.correspondencePinCode);
        
    }
}
