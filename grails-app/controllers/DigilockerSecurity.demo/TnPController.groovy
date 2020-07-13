package DigilockerSecurity.demo
import TnP.TnPInformation
import Student.StudentBasicInformation
import java.util.Date
class TnPController {
 def springSecurityService
    def index() {
       // render ''
        redirect (action : 'Dashboard')
    }
    def Dashboard(){
                def user = springSecurityService.currentUser
               println user;
               def tnPInforamtion = TnPInformation.findByUser(user)
               def cse = StudentBasicInformation.countByBranch("Computer Science and Engineering")
               def it =  StudentBasicInformation.countByBranch("Information Technology")
               def me = StudentBasicInformation.countByBranch("Mechanical Engineering")
               def ce =  StudentBasicInformation.countByBranch("Civil Engineering")
               def ee = StudentBasicInformation.countByBranch("Electrical Engineering")
               def ece =  StudentBasicInformation.countByBranch("Electrics and Communication Engineering")
               [tnPInforamtion :tnPInforamtion,cse:cse,it:it,me:me,ce:ce,ee:ee,ece:ece]
    }
    def sectionSearch(){
         def user = springSecurityService.currentUser
               def tnPInforamtion = TnPInformation.findByUser(user)
        [tnPInforamtion :tnPInforamtion]
        
    }
    def branchSearch(){
         def user = springSecurityService.currentUser
               def tnPInforamtion = TnPInformation.findByUser(user)
        [tnPInforamtion :tnPInforamtion]
        
    }  
    
    def messageStudent(){
         def user = springSecurityService.currentUser
               def tnPInforamtion = TnPInformation.findByUser(user)
        [tnPInforamtion :tnPInforamtion]
        
    }
    def branch_table(){
        
    }
    def search_form(){
        
    }
    
def testView(){
    
}

    def searchBranchWise(){
        def d= new Date();
       
        def branch  = params.branchName;
        def year = params.yearName
        def result ;
        
        
        
        if(branch.equals("All")&& year.equals("All")){
            //To Select All Users 
            result= StudentBasicInformation.findAll()
        }
        else if(branch.equals("All")){
            //To Select same branch student year wise
            def currentYear = d.getYear()+1900//+1900 because getYear() returns 119 for 2019
            def currentMonth = d.getMonth();
            def searchYear = currentYear-Integer.parseInt(year)
            if(currentMonth>6){
                searchYear +=1
            }
            
            result = StudentBasicInformation.findAllByJoiningYear(String.valueOf(searchYear))
        }
        else if(year.equals("All")){
            //to select all year student on Branch wise
            result = StudentBasicInformation.findAllByBranch(branch);
        }
        else {
            //if year is given and branch is given
            int currentYear = d.getYear()+1900//+1900 because getYear() returns 119 for 2019
            int currentMonth = d.getMonth();
            int genrateSearchYear = (currentYear-Integer.parseInt(year))
           
            if(currentMonth>6){
                genrateSearchYear +=1
            }
             String searchYear=String.valueOf(genrateSearchYear)
           result = StudentBasicInformation.findAll("from StudentBasicInformation as s where s.branch=:branch and s.joiningYear=:searchYear ",[branch:branch,searchYear:searchYear])
     
        }
      
      
        render view : 'branchSearch', model:[result:result]
        
    }
    def draftNotice(){
         def user = springSecurityService.currentUser
               def tnPInforamtion = TnPInformation.findByUser(user)
               [tnPInforamtion :tnPInforamtion]
    }
        def noticeDrafter() {
            def user = springSecurityService.currentUser
               def tnPInforamtion = TnPInformation.findByUser(user)
        [tnPInforamtion :tnPInforamtion]
         
    }
    def noticePreview(){
            def user = springSecurityService.currentUser
               def tnPInforamtion = TnPInformation.findByUser(user)
        [tnPInforamtion :tnPInforamtion]
        
    }
}
