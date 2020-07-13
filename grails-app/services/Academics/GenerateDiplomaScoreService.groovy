package Academics


class GenerateDiplomaScoreService {

    StudentDiplomaScore studentDiplomaScore;
    def serviceMethod() {

    }
    
    def generateDiplomaScore(def currentUser, def params){
        studentDiplomaScore = new StudentDiplomaScore();
        studentDiplomaScore.user = currentUser
        setValues(params)
        studentDiplomaScore.save()
    }

    private def setValues(def params){
        studentDiplomaScore.setDiplomaBranch(params.diplomaBranch)
        studentDiplomaScore.setDiplomaPassYear(params.diplomaPassYear)
        studentDiplomaScore.setDiplomaPercent(params.diplomaPercent)
        studentDiplomaScore.setDiplomaState(params.diplomaState)
        studentDiplomaScore.setDiplomaUniversity(params.diplomaUniversity)
        studentDiplomaScore.diplomaMarksheet = params.diplomaMarksheet
    } 
}


