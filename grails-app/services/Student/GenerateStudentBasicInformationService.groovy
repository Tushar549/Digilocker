package Student
import DigilockerSecurity.*;

class GenerateStudentBasicInformationService {
    
    StudentBasicInformation studentBasicInformation;

    def serviceMethod() {

    }
    
     def generateStudentBasicInformation(def params){
        
        studentBasicInformation = new  StudentBasicInformation();
        studentBasicInformation.user=User.findByUsername(String.valueOf(params.rollNo));
        setValues(params);
        studentBasicInformation.save();
        
    }
    
    private def setValues(def params){ 
        studentBasicInformation.setFirstName(params.firstName);
        studentBasicInformation.setLastName(params.lastName);
        studentBasicInformation.setDateOfBirth(params.dateOfBirth);
        studentBasicInformation.setPhoneNo(params.studentContact);
        studentBasicInformation.setEmail(params.studentEmail);
        studentBasicInformation.setBranch(params.branch);
        studentBasicInformation.setJoiningYear(params.joiningYear);
        studentBasicInformation.setStatus("false");
        studentBasicInformation.xPercent=0.0
        studentBasicInformation.xiiPercent=0.0
        studentBasicInformation.btechPercent=0.0
    }
}
