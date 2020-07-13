package Certificate

//import grails.gorm.transactions.Transactional

//@Transactional
import Certificate.StudentTrainingAndInternship
import DigilockerSecurity.*;
class GenerateStudentTrainingAndInternshipService {
    StudentTrainingAndInternship studentTrainingAndInternship;

    def serviceMethod() {

    }
      def generateStudentTrainingAndInternship(def params)
    {
        studentTrainingAndInternship = new StudentTrainingAndInternship();
        studentTrainingAndInternship.user=User.findByUsername(params.rollNo);
        setValues(params);
        //studentTrainingAndInternship.properties=params;
           studentTrainingAndInternship.save(flush:true);
           return studentTrainingAndInternship
    }
     private def setValues(def params){ 
        studentTrainingAndInternship.setSession(params.session);
        studentTrainingAndInternship.setBranch(params.branch);
        studentTrainingAndInternship.setStudentName(params.studentName);
        studentTrainingAndInternship.setStudentYear(params.studentYear);
        studentTrainingAndInternship.setRollNo(params.rollNo);
        studentTrainingAndInternship.setCity(params.city);        
        studentTrainingAndInternship.setCompanyName(params.companyName);
       studentTrainingAndInternship.setImageUpload(params.imageUpload);
         studentTrainingAndInternship.setProjectTitle(params.projectTitle);
        studentTrainingAndInternship.setMentorName(params.mentorName);
        studentTrainingAndInternship.setAreaOfProject(params.areaOfProject);
      
    }

}