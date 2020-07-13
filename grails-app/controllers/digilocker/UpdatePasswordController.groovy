package digilocker

import DigilockerSecurity.User

class UpdatePasswordController {

   
    def springSecurityService
    def passwordEncoder;
    def index() {
    }
    
    
    
     def chng(){
        def id='1603010127'
        def cp = springSecurityService.encodePassword('abc' )
        
        User.executeUpdate("update User set password=:p " +
                     "where username=:i",[p:cp,i:id])
        render 'hi'
   
    }
}
