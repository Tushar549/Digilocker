package Academics

import DigilockerSecurity.User


class StudentTenthScore {
     
    User user;
    String xBoard
    String xPassYear
    String xState
    String xPercent
    String xSchool
       Byte [] xMarksheet
    static constraints = {
        
        xBoard(nullable:false,blank:false)
        
        xPassYear(nullable:false,blank:false)
        
        xState(nullable:false,blank:false)
        
        xPercent(nullable:false,blank:false)
        
        xSchool(nullable:false,blank:false)
        
    }
}
