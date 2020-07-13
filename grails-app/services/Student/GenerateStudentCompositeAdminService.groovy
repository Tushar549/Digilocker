package Student

import DigilockerSecurity.User

class GenerateStudentCompositeAdminService {
    User user;
    def serviceMethod() {
        
    }
    GenerateStudentCompositeAdminService(def params){
        generateStudentCompositeAdmin(params);
    }
    
    private def generateStudentCompositeAdmin(def params){
        GenerateUserService generateUserService = new GenerateUserService();
        generateUserService.generateUser(String.valueOf(params.rollNo));
        GenerateStudentBasicInformationService generateStudentBasicInformationService=new GenerateStudentBasicInformationService();
        generateStudentBasicInformationService.generateStudentBasicInformation(params);
        
        
        /* if(studentCompositeInformation.save(flush:true))
            println 'done'
            else 
            print 'not done'
         */
        
    }
    
}
