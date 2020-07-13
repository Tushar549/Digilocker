package Academics

import DigilockerSecurity.User


class StudentDiplomaScore {

     User user;
    String diplomaPercent
    String diplomaUniversity
    String diplomaBranch
    String diplomaPassYear
    String diplomaState
      Byte [] diplomaMarksheet 
    static constraints = {
        
        diplomaPercent(nullable:false,blank:false)
        
        diplomaUniversity(nullable:false,blank:false)
        
        diplomaBranch(nullable:false,blank:false)
        
        diplomaPassYear(nullable:false,blank:false)
        
        diplomaState(nullable:false,blank:false)
            }
}
