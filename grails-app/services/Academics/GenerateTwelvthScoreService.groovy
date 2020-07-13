package Academics

import DigilockerSecurity.User

class GenerateTwelvthScoreService {

    StudentTwelvthScore studentTwelvthScore;
    
    def serviceMethod() {

    }
    
    def generateTwelvthScore(User currentUser,def params){
        
        studentTwelvthScore = new StudentTwelvthScore()
        studentTwelvthScore.user = currentUser
        setValues(params)
        studentTwelvthScore.save();
    }
    private def setValues(def params){
        studentTwelvthScore.setXiiBoard(params.xiiBoard)
        studentTwelvthScore.setXiiEnglish(params.xiiEnglish)
        studentTwelvthScore.setXiiPassYear(params.xiiPassYear)
        studentTwelvthScore.setXiiPercentage(params.xiiPercent)
        studentTwelvthScore.setXiiSchool(params.xiiSchool)
        studentTwelvthScore.setXiiState(params.xiiState)
        studentTwelvthScore.xiiMarksheet = params.xiiMarksheet
    }
}
