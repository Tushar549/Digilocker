package Student

import DigilockerSecurity.*;

class GenerateUserService {

    User user;
    
    def generateUser(def username){
        Role studentRole = Role.findByAuthority('ROLE_STUDENT')
         def student = new User(username: String.valueOf(username) , password: '1234', enabled: true).save()
         
        UserRole.create student, studentRole

            UserRole.withSession {
                it.flush()
                it.clear()
            }
    }
    def serviceMethod() {

    }
}
