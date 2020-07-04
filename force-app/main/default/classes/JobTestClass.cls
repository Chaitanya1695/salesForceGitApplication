@isTest
public class JobTestClass {

   @isTest
    public static  void insertUnitTest()
    {
        Job__c job = new Job__c();
        
        job.Job_Type__c = 'Manager';
        job.Number_of_Positions__c = 8;
        job.Active__c = true;
        job.Required_Skills__c ='Team Player';
        job.Certification_Required__c='MPM (Master Project Manager)';
        job.Qualification_Required__c='Bcom';
        job.Manager__c ='0032x000004IG4D';
        
      

        test.startTest();
        insert job;
        job.Number_of_Positions__c = 6;
        update job;
      
        test.stopTest();
        
        
        List<Job__c> jobList = [SELECT Name FROM Job__c WHERE Manager__c ='0032x000004IG4D'];
        System.assertEquals(1,jobList.size());

 
    }
@isTest
    public static void deleteJob()
    {
       Job__c job = new Job__c();
        
        job.Job_Type__c = 'Manager';
        job.Number_of_Positions__c = 8;
        job.Active__c = true;
        job.Required_Skills__c ='Team Player';
        job.Certification_Required__c='MPM (Master Project Manager)';
        job.Qualification_Required__c='Bcom';
        job.Manager__c ='0032x000004IG4D';
        insert job;
        
        test.startTest();
        database.DeleteResult result= database.delete(job,false);
        test.stopTest();
        
       system.assertEquals('This Job is active and can not be deleted', result.getErrors()[0].getMessage());
        
    }
    
    
}