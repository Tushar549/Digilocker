package Certificate

import DigilockerSecurity.User

class StudentCoCurriculum {
     User user;
     String status;
    String category;
    String event;
    String organisedBy;
    String position;
      Byte [] imageUpload; 
    

    static constraints = {
        
      event nullable:false,blank:false;
      category nullable:false,blank:false;
      status nullable:false,blank:false;
      organisedBy nullable:false,blank:false;
      position nullable:false,blank:false;       
      imageUpload  nullable:false,blank:false;
    }
}
