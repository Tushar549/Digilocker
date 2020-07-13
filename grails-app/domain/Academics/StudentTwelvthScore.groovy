package Academics

import DigilockerSecurity.User

class StudentTwelvthScore {

    User user;
    String xiiBoard
    String xiiPassYear
    String xiiState
    String xiiPercentage
    String xiiSchool
    String xiiEnglish
     Byte [] xiiMarksheet
    static constraints = {
        
        xiiEnglish(nullable:false,blank:false)
        
        xiiBoard(nullable:false,blank:false)
        
        xiiPassYear(nullable:false,blank:false)
        
        xiiState(nullable:false,blank:false)
        
        xiiPercentage(nullable:false,blank:false)
        
        xiiSchool(nullable:false,blank:false)
        
    }
}
