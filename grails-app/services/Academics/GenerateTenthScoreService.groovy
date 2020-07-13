package Academics

import DigilockerSecurity.User


class GenerateTenthScoreService {

    StudentTenthScore studentTenthScore;
    def serviceMethod() {

    }
    
    def generateTenthScore(User currentUser,def params){
        studentTenthScore = new StudentTenthScore();
        studentTenthScore.user = currentUser
        setValues(params);
        studentTenthScore.save();
        
        
    }
    
    private def setValues(def params){
        studentTenthScore.setxBoard(params.xBoard)
        studentTenthScore.setxPassYear(params.xPassYear)
        studentTenthScore.setxPercent(params.xPercent)
        studentTenthScore.setxSchool(params.xSchool)
        studentTenthScore.setxState(params.xState)
        studentTenthScore.xMarksheet = params.xMarksheet
        
}
}