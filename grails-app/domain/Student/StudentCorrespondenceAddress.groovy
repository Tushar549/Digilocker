package Student

import DigilockerSecurity.User

class StudentCorrespondenceAddress {
   
    String flatNo;
    String city;
    String district;
    String state;
    String pincode;
    
    static constraints = {
        
        flatNo nullable: false, blank: false
        city nullable: false, blank: false
        district nullable: false, blank: false
        state nullable: false, blank: false
        pincode nullable: false, blank: false, maxSize: 6, minSize: 6
        
    }
}
