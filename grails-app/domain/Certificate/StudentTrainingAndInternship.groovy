package Certificate

import DigilockerSecurity.User

class StudentTrainingAndInternship {
    User user;
    String session;
    String branch;
    String studentName;
    String studentYear;
    String rollNo;
    String companyName;
    String city;
    String projectTitle;
    String mentorName;
    String areaOfProject;
   Byte [] imageUpload;
   

    static constraints = {
        
        session nullable:false,blank:false;
        branch nullable:false,blank:false;
          studentName nullable:false,blank:false;
          studentYear nullable:false,blank:false;
           city nullable:false,blank:false;
           areaOfProject nullable:false,blank:false;
            mentorName nullable:false,blank:false;
             rollNo nullable:false,blank:false;
              companyName nullable:false,blank:false;
             projectTitle nullable:false,blank:false;
      imageUpload nullable:false,blank:false;                  
        
    }
}
