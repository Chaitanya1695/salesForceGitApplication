public class CandidateVFController {
    
 //public Candidate__c candidate {get;set;}

    public static List<Candidate__c> getCandidateList(){

       List<Candidate__c> candList = new List<Candidate__c>([Select First_Name__c,Last_Name__c, Email__c,Country__c,State__c,Status__c,Job__c FROM Candidate__c]);
        
       System.debug(candList.size());
        
       Integer hiredNumber = 0; 
        Integer appliedNumber = 0; 
       if(candList.size() > 0)
       {
          for(Candidate__c data : candList)
          {
               if(data.Status__c=='Hired')
               {
                   hiredNumber +=1; 
               }else{
                   appliedNumber+=1;
               }
          }
       }
        
        System.debug(candList.size());
        return candList ;

      }
}