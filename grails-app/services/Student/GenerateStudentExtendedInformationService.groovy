package Student

import DigilockerSecurity.User

class GenerateStudentExtendedInformationService {
    
    StudentExtendedInformation studentExtendedInformation;

    def serviceMethod() {

    }
    
    def generateStudentExtendedInformation(User user,def params){
        
        studentExtendedInformation = new StudentExtendedInformation();
        studentExtendedInformation.user = user;          //reference been created for the existing user
        studentExtendedInformation.studentCorrespondenceAddress  =new GenerateStudentCorrespondenceAddressService().generateStudentCorrespondenceAddress(params);
        studentExtendedInformation.studentPermanentAddress=  new GenerateStudentPermanentAddressService().generateStudentPermanentAddress(params);
   
       
        setValues(params);
        
        if(!studentExtendedInformation.hasErrors()&&studentExtendedInformation.save(flush:true)){
            //updateBasicInformation(user,params);
            return true
       }
       else 
            return false;
            
        return true;
        
    }
    private def setValues(def params){
        
        studentExtendedInformation.setFatherName(params.fatherName);
        studentExtendedInformation.setMotherName(params.motherName);
        studentExtendedInformation.setContactNumber(params.parentsContact);
        studentExtendedInformation.setGender(params.studentGender);
        
    }
   
}
