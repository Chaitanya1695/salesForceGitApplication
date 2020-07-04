public class JobCustomController {
    
    public Job__c job {get;private set;}
    public JobCustomController(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        job = (id==null)?new Job__c():
        [SELECT Descriptions__c,Number_of_Positions__c,Expires_On__c,Salary_Offered__c,Manager__c,Job_Type__c,Required_Skills__c,Qualification_Required__c,Certification_Required__c,Active__c FROM Job__c WHERE Id = :id];
    }
    
     public PageReference save() {
        try {
            upsert(job);
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
          //  After successful Save, navigate to the default view page
        PageReference redirectSuccess = new ApexPages.StandardController(job).view();
        return (redirectSuccess);
     }
}