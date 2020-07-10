@isTest
public class JobAllTest {


    @isTest
    static void jobTest(){
        List<Job__c> jobList=[Select id,name from Job__c];
       // System.assertNotEquals(25, jobList.size());
        
        
        Contact newContact = new Contact(lastname='Dat');
        insert newContact;
        System.assertNotEquals(null, newContact.Id);
        Job__c newJob=new Job__c();
        newJob.Manager__c=newContact.Id;
        newJob.Number_of_Positions__c=6;
        newJob.Job_Type__c='Manager';
        newJob.Required_Skills__c='Team Player';
        newJob.Qualification_Required__c='Bcom';
        newJob.Certification_Required__c='CMP (Certified Project Manager)';
        
        insert newJob;
        
         System.assertNotEquals(null, newJob.Id);
        
        
       Candidate__c c = new Candidate__c();
        
        c.First_Name__c = 'Amit';
        c.Last_Name__c = 'Gangurde';
        c.Country__c='India';
        c.State__c='Gujrat';
        c.Email__c='amit@gmail.com';
        c.Expected_Salary__c=5000;
        c.Status__c = 'Hired';
        c.Job__c=newJob.Id;
        insert c;
         System.assertNotEquals(null, c.Id);
        
       Candidate__c c2 = new Candidate__c();
        
        c2.First_Name__c = 'Amit1';
        c2.Last_Name__c = 'Gangurde1';
        c2.Country__c='India';
        c2.State__c='Gujrat';
        c2.Email__c='amit@gmail.com';
        c2.Expected_Salary__c=5000;
        c2.Status__c = 'Applied';
        c2.Job__c=newJob.Id;
        
        insert c2;
        
        System.assertNotEquals(null, c2.Id);
        
        List<Candidate__c> candList=CandidateVFController.getCandidateList();
        
        //System.assertEquals(23, candList.size());
    }
    
    
}