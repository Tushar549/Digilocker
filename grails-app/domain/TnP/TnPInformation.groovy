package TnP

import DigilockerSecurity.User

class TnPInformation {
    User user;
   String firstName;
   String lastName;
   String email;
   String contactNumber;

    static constraints = {
        
         contactNumber nullable: false, blank: false
         firstName nullable: false, blank: false
         lastName nullable: false, blank: false
         email email: true, blank: false
    }
}
