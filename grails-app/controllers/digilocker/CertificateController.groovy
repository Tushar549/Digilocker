package digilocker

import Certificate.GenerateStudentCoCurriculumService
import Certificate.GenerateStudentTrainingAndInternshipService
import Certificate.StudentCoCurriculum
import DigilockerSecurity.*;
//import Certificate.GenerateStudentCoCurriculumService
//import Certificate.GenerateStudentTrainingAndInternshipService
//import Student.StudentCompositeInformation

class CertificateController {

    def index() { }
    
    def saveCoCurriculum()
    {
        //in params always provide the rollno field first.
        //def params =['rollNo':'1703010225', 'status':'intracollege', 'category':'cultural', 'event':'skit', 'winner':'0', 'participant':'2', 'member':'team 1']
    
       GenerateStudentCoCurriculumService generateStudentCoCurriculum=new  GenerateStudentCoCurriculumService();
               
       render generateStudentCoCurriculum.generateStudentCoCurriculum(params);
        //render ob.fun(param);
    }
    def saveTrainingAndInternship()
    {
       // def params =['rollNo':'1703010225', 'session':'2017-2021', 'branch':'cse', 'studentName':'anisha', 'studentYear':'3', 'companyName':'abc', 'city':'delhi', 'projectTitle':'web','areaOfProject':'design','mentorName':'abg']
    
    GenerateStudentTrainingAndInternshipService generateStudentTrainingAndInternship=new GenerateStudentTrainingAndInternshipService();
     render  generateStudentTrainingAndInternship.generateStudentTrainingAndInternship(params);
        
    }
    def temporary()
    {   //def params =['rollNo':'1703010225', 'status':'neelesh', 'category':'technical', 'event':'code of war', 'winner':'first position', 'participant':'2', 'member':'trinity cse-president']
    
        StudentCoCurriculum studentCoCurriculum = new StudentCoCurriculum();
       
       
        studentCoCurriculum.user=User.findByUsername(params.rollNo);
       // setValues(params);
         studentCoCurriculum.setStatus(params.status);
        studentCoCurriculum.setCategory(params.category);
        studentCoCurriculum.setEvent(params.event);
          studentCoCurriculum.setPosition(params.position);
        studentCoCurriculum.setorganisedBy(params.organisedBy);
        studentCoCurriculum.save();
        render  studentCoCurriculum
    }
}
