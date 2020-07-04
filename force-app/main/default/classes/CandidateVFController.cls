public class CandidateVFController {
    
 public Candidate__c candidate {get;set;}

    public List<Candidate__c> getCandidateList(){

        return [Select First_Name__c,Last_Name__c, Email__c,Country__c,State__c,Status__c,Job__c FROM Candidate__c  ];

            }
}