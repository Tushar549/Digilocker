package Student

import DigilockerSecurity.User

class StudentExtendedInformation {
    User user;    
    StudentCorrespondenceAddress studentCorrespondenceAddress;
    StudentPermanentAddress studentPermanentAddress;
    
    String fatherName;
    String motherName;
    String contactNumber;
    String gender;
    
    static constraints = {
        
        fatherName nullable: false, blank: false
        motherName nullable: false, blank: false
        contactNumber nullable: false, blank: false, minSize:10, maxSize:13
        gender nullable: false, blank: false
        
    }
}