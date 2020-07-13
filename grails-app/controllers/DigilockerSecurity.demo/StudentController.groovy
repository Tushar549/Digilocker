package DigilockerSecurity.demo

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import Student.GenerateStudentExtendedInformationService
import Student.*;
import Academics.*;

import DigilockerSecurity.*
class StudentController {

    def springSecurityService
    def index() { 
        
       
     
            redirect action : 'Dashboard'
}
def Dashboard(){
               def user = springSecurityService.currentUser
               def value=StudentBasicInformation.findByUser(user)
       
               [basicInfo:value]
    }
    
def studentDetailsForm(){
       def user = springSecurityService.currentUser
       def value=StudentBasicInformation.findByUser(user)
       println(value.firstName)
        
        [basicInfo:value]
    }
    
def studentDetails(){
    def user = springSecurityService.currentUser
       def basicInfo=StudentBasicInformation.findByUser(user)
       def extendedInformation = StudentExtendedInformation.findByUser(user)
        println(extendedInformation)
        
        [basicInfo:basicInfo,extendedInformation:extendedInformation]
}

def formvalue(){
    User currentUser = springSecurityService.currentUser 
    
  
   // new GenerateStudentCorrespondenceAddressService().generateStudentCorrespondenceAddress(currentUser,params);
    boolean result= new GenerateStudentExtendedInformationService().generateStudentExtendedInformation(currentUser,params);
   // new GenerateStudentPermanentAddressService().generateStudentPermanentAddress(currentUser,params);
   
    
     if(result)  {
     new AcademicCompositeService(currentUser,params);
   StudentBasicInformation.executeUpdate("update StudentBasicInformation as s set status='true'" +
                      "where s.user=:user",[user:currentUser])
            double xper =Double.parseDouble( params.xPercent)
            def temp= StudentBasicInformation.findByUser(currentUser)
            temp.xPercent=xper;
            def xiiper=params.xiPercent
           try{
            temp.xiiPercent=Double.parseDouble( params.xiiPercent)}
        catch(Exception e){}
            if(temp.save(flush:true))
            println 'done'
     }
      
    redirect (action : 'studentFormView')
   
      
   
    }
def studentFormView(){
   def user = springSecurityService.currentUser
       def basicInfo = StudentBasicInformation.findByUser(user)
       def extendedInformation = StudentExtendedInformation.findByUser(user)
       def tenthScore = StudentTenthScore.findByUser(user) 
       def twelvthScore = StudentTwelvthScore.findByUser(user) 
       def diplomaScore = StudentDiplomaScore.findByUser(user)
        [basicInfo:basicInfo,extendedInformation:extendedInformation,tenthScore:tenthScore,twelvthScore:twelvthScore,diplomaScore:diplomaScore]
}
def save(){
    redirect (action : 'Dashboard')
}

    def changePassword(){
       
    }
   
    def updatePassword(){
        
        try{
            def user=springSecurityService.currentUser
            String curentpassword=( params.currentPassword).toString()
            def newPassword = params.newPassword.toString()
            def reNewPassword = params.reNewPassword;
            def userName= user.username.toString()
            def setCurrentPassword = springSecurityService.encodePassword(newPassword).toString()
       
            def verifyPassword =false
        
            try {
                verifyPassword = springSecurityService.passwordEncoder.isPasswordValid(user.password,curentpassword,null)
            }
            catch (Exception e){
                render e
            }
            if(verifyPassword ){
                println verifyPassword
                if( newPassword.equals( reNewPassword)){
                    if(springSecurityService.passwordEncoder.isPasswordValid(user.password,newPassword,null)==true){
                        flash.message="! Please choose a password different from your current one !";
                        redirect action:'changePassword'
                        
                       
                    }
                    else if(!(User.executeUpdate("update User set password=:pass " +
                     "where username=:username",[pass:setCurrentPassword,username:userName])))  {
                        flash.message="! Password Not Updated! Try again. !";
                        redirect action:'changePassword'
                    } 
                    
                    else   { 
                    flash.message="! Password Changed Successfully !";
                    
                        redirect  action:'dashboard'
                    }
                }
                else{
                    flash.message="! Password does Not Match !";
                    redirect action:'changePassword'
                }
         
            }
            else {
                flash.message="! Incorrect Password !"+verifyPassword;
                redirect action:'changePassword'
            }
        }
        catch (Exception e){
            render 'hi'
        }
      
    }

}
