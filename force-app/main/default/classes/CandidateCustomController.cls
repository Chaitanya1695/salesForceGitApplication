public class CandidateCustomController {
    public Candidate__c candidate {get; private set;}
    
    public CandidateCustomController(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        candidate = (id==null)?new Candidate__c():
        [SELECT Salutation__c, First_Name__c, Last_Name__c,DOB__c,Email__c,Expected_Salary__c,Application_Date__c,Country__c,State__c,Status__c,Job__c FROM Candidate__c WHERE Id = :id];
    }
    
    public PageReference save() {
        try {
            upsert(candidate);
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
          //  After successful Save, navigate to the default view page
        PageReference redirectSuccess = new ApexPages.StandardController(candidate).view();
        return (redirectSuccess);

    }

}