package DigilockerSecurity.demo

import DigilockerSecurity.User
import Student.StudentBasicInformation
import Student.GenerateStudentCompositeAdminService
import TnP.GenerateTnPCompositeAdminService
import TnP.TnPInformation

class AdminController {
      

    def index() {
      
       // def user = springSecurityService.currentUser
       // println(user)
    redirect (action : 'Dashboard')}
def Dashboard(){
     def cse = StudentBasicInformation.countByBranch("Computer Science and Engineering")
               def it =  StudentBasicInformation.countByBranch("Information Technology")
               def me = StudentBasicInformation.countByBranch("Mechanical Engineering")
               def ce =  StudentBasicInformation.countByBranch("Civil Engineering")
               def ee = StudentBasicInformation.countByBranch("Electrical Engineering")
               def ece =  StudentBasicInformation.countByBranch("Electrics and Communication Engineering")
               [cse:cse,it:it,me:me,ce:ce,ee:ee,ece:ece]
              
    }
def uploadStudentFile(){
}
def submitStudentBasicInformation(){
   def value =['rollNo':'00', 'firstName':'Prateek', 'lastName':'Kumar', 'dateOfBirth':'01/07/1997', 'studentContact':'9650470421', 'studentEmail':'Kprateek155@gmail.com', 'branch':'Cse', 'joiningYear':'2019']
    
    int length =params.rollNo.length;
    for(int i=0;i<length;i++){
        value.rollNo=params.rollNo[i];
            value.firstName=params.firstName[i];
              value.lastName=params.lastName[i];
                value.dateOfBirth=params.dateOfBirth[i];
                  value.studentContact=params.studentContact[i];
                    value.studentEmail=params.studentEmail[i];
                        value.branch=params.branch[i];
                            value.joiningYear=params.joiningYear[i];
        
            new GenerateStudentCompositeAdminService(value);
            
    }
    
    redirect (action:'Dashboard')
}
def tnPFile(){
    def value =['tnPId':'123','firstName':'Tushar', 'lastName':'Jain','contactNumber':'9873229968', 'email':'tusharjain549@gmail.com']
    int length=params.firstName.length;
    
        for(int i=0;i<length;i++){
            value.tnPId=params.tnPId[i];
                value.firstName=params.firstName[i];
                    value.lastName=params.lastName[i];
                        value.contactNumber=params.contactNumber[i];
                            value.email=params.email[i];
                       
            new GenerateTnPCompositeAdminService(value);
        }
        
    redirect (action:'Dashboard')
    
}
    
def modifyStudentDetails(){
    
}
def uploadTnPfile(){
    
}
}
