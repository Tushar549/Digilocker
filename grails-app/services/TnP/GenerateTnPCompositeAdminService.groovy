package TnP


class GenerateTnPCompositeAdminService {

    def serviceMethod() {

    }
     GenerateTnPCompositeAdminService(def params){
        generateTnPCompositeAdmin(params);
    }
    private def generateTnPCompositeAdmin(def params){
      
         GenerateTnPUserService generateTnPUserService = new GenerateTnPUserService();
         generateTnPUserService.generateTnPUser(String.valueOf(params.tnPId));
         
        GenerateTnPBasicInformationService generateTnPBasicInformationService= new GenerateTnPBasicInformationService();
         generateTnPBasicInformationService.generateTnPBasicInformation(params);
    }
}