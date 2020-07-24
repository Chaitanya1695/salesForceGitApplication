@isTest
private class CandidateTestClass 
{

    static testMethod void myUnitTest()
    {
        Contact newContact = new Contact(lastname='Dat');
        insert newContact;
        
        Job__c newJob=new Job__c();
        newJob.Manager__c=newContact.Id;
        newJob.Number_of_Positions__c=6;
        newJob.Job_Type__c='Manager';
        newJob.Required_Skills__c='Team Player';
        newJob.Qualification_Required__c='Bcom';
        newJob.Certification_Required__c='CMP (Certified Project Manager)';
        insert newJob;
        
        Candidate__c candidate = new Candidate__c();
        candidate.Country__c ='Australia';
        candidate.Name = 'Ashish';
        candidate.First_Name__c = 'Ashish';
        candidate.Last_Name__c = 'Upadhey';
        candidate.Email__c = 'ashish@gmail.com';
        candidate.State__c = 'Victoria';
        candidate.Status__c = 'Hired';
        candidate.Job__c = newJob.Id;
        candidate.Application_Date__c =Date.newInstance( 2020, 07, 04);
        
        Test.startTest();
        database.SaveResult res=database.insert(candidate,false);
        Test.stopTest();
        System.assertEquals( 'Expected Salary field is missing trigger', res.getErrors()[0].getMessage());
      
    } 
}










 //  List<Candidate__c>  collectList =[SELECT ID , Application_Date__c,Expected_Salary__c FROM Candidate__c WHERE Job__c =:'a012x00000A2Owl'];
       // System.assertEquals(1, collectList.size());
       // System.assertEquals( 'Expected Salary field is missing trigger', res.getErrors()[0].getMessage());
       // System.assertEquals(12000, collectList[0].Expected_Salary__c);
        //System.assertEquals(System.today()+1, collectList[0].Application_Date__c);