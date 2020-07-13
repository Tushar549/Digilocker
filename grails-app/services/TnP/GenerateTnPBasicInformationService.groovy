package TnP

import DigilockerSecurity.User

class GenerateTnPBasicInformationService {
    TnPInformation tnPInformation;
    def serviceMethod() {

    }
    private def generateTnPBasicInformation(def params){
     
     tnPInformation = new TnPInformation();    
     tnPInformation.user=User.findByUsername(String.valueOf(params.tnPId));
     setValues(params);
     tnPInformation.save();
    }
    
    private def setValues(def params){
        tnPInformation.setContactNumber(params.contactNumber);
        tnPInformation.setFirstName(params.firstName);
        tnPInformation.setLastName(params.lastName);
        tnPInformation.setEmail(params.email);
        
}
}
