package Academics

class AcademicCompositeService {

    private def currentUser
    
    private def params
    
    AcademicCompositeService(def user,def params){
        
        this.params = params
        this.currentUser= user
        
        if(params.diplomaPercent != null && params.diplomaPassYear != null && params.diplomaPassYear != "" ){
            
        
        GenerateDiplomaScoreService generateDiplomaScoreService = new GenerateDiplomaScoreService()
        generateDiplomaScoreService.generateDiplomaScore(currentUser,params)
        
        }
        
        if(params.xPercent != null && params.xPassYear != null && params.xPassYear != "" ){
            
        GenerateTenthScoreService generateTenthScoreService = new GenerateTenthScoreService()
        generateTenthScoreService.generateTenthScore(currentUser,params)
    }
         if(params.xiiPercent != null && params.xiiPassYear != null && params.xiiPassYear != "" ){

        GenerateTwelvthScoreService generateTwelvthScoreService = new GenerateTwelvthScoreService()
        generateTwelvthScoreService.generateTwelvthScore(currentUser,params)
         }
    }
    
    def serviceMethod() {

    }
}
