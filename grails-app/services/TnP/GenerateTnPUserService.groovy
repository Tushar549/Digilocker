package TnP

import DigilockerSecurity.*

class GenerateTnPUserService {

    def serviceMethod() {

    }
    def generateTnPUser(def tnPId){
         Role tnPRole = Role.findByAuthority('ROLE_TNP')
         def tnP = new User(username: String.valueOf(tnPId) , password: '1234', enabled: true).save()
         
        UserRole.create tnP, tnPRole

            UserRole.withSession {
                it.flush()
                it.clear()
            }
    }
}
