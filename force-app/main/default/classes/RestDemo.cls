@RestResource(urlMapping='/GetAllCandidate/')
global class RestDemo {
    @HttpGet
    global static List<Candidate__c> getCandidateList(){
        List<Candidate__c> candList =[SELECT Salutation__c, First_Name__c, Last_Name__c,DOB__c,Email__c,Expected_Salary__c,Application_Date__c,Country__c,State__c,Status__c,Job__c FROM Candidate__c];
    return candList;
            }

}