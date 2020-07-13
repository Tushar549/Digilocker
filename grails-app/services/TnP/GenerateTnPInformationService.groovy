package TnP

class GenerateTnPInformationService {

    TnPInformation tnPInformation;
    def serviceMethod() {

    }
    
    TnPInformation generateTnPInformation(def params){
     
     tnPInformation = new TnPInformation();   
     setValues(params);
     return(tnPInformation);
    }
    
    private def setValues(def params){
        
        tnPInformation.setPhoneNo(1234567890);
        tnPInformation.setTnPId('abc@g.com');
        tnPInformation.setPassword('helloworld');
        tnPInformation.setEmail('abc@g.com');
        tnPInformation.setName('xyz');
        
        
    }
    
}
