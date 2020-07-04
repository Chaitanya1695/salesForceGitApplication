public class JobCustomContollerApex {
    
    public Job__c job {get;set;}
       
    public List<Job__c> getDetail(){
      return [SELECT Descriptions__c,Number_of_Positions__c,Expires_On__c,Salary_Offered__c,Manager__c,Job_Type__c,
              Required_Skills__c,Qualification_Required__c,Certification_Required__c,Active__c,
             (SELECT Salutation__c, First_Name__c, Last_Name__c,DOB__c,Email__c,Expected_Salary__c,Application_Date__c,
               Country__c,State__c,Status__c,Job__c FROM Candidates__r ) FROM Job__c];
     
    }
    

 }