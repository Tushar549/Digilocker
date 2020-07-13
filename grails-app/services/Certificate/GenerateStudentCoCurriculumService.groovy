package Certificate
//import grails.gorm.transactions.Transactional

//@Transactional
//import Certificate.GenerateStudentCompositeInformationService;
import Certificate.StudentCoCurriculum
import DigilockerSecurity.*;
class GenerateStudentCoCurriculumService {
    StudentCoCurriculum studentCoCurriculum;

    def serviceMethod() {

    }
   def generateStudentCoCurriculum(def params)
    {
        studentCoCurriculum = new StudentCoCurriculum();
        studentCoCurriculum.user=User.findByUsername(params.rollNo);
        setValues(params);
    //   studentCoCurriculum.properties=params;
        studentCoCurriculum.save(flush:true);
        return studentCoCurriculum
    }
    private def setValues(def params){ 
        studentCoCurriculum.setStatus(params.status);
        studentCoCurriculum.setCategory(params.category);
        studentCoCurriculum.setEvent(params.event);
        studentCoCurriculum.setPosition(params.position);
        studentCoCurriculum.setOrganisedBy(params.organisedBy);
        studentCoCurriculum.setImageUpload(params.imageUpload);
    }
    /* private def setValuestemp(def params){ 
        studentCoCurriculum.setStatus('paramsstatus');
        studentCoCurriculum.setCategory('paramscategory');
        studentCoCurriculum.setEvent('paramsevent');
        studentCoCurriculum.setMember('paramsmember');
        studentCoCurriculum.setParticipant('dssd');
        studentCoCurriculum.setWinner('paramswinner');
        //studentCoCurriculum.setImageUpload(params.imageUpload);
    }*/
}
