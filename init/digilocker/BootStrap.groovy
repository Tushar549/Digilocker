package digilocker

import DigilockerSecurity.Role
import DigilockerSecurity.User
import DigilockerSecurity.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def studentRole = new Role(authority: 'ROLE_STUDENT').save() 
        def admin = new User(username: 'admin' , password: '1234', enabled: true).save()
        def tnPRole = new Role(authority: 'ROLE_TNP').save() 
      
        UserRole.create admin, adminRole

            UserRole.withSession {
                it.flush()
                it.clear()
            }
             
            
    }
    def destroy = {
    }
}
