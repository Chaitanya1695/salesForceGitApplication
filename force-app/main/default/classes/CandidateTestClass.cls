@isTest
private class CandidateTestClass 
{

    static testMethod void myUnitTest()
    {
      Candidate__c candidate = new Candidate__c();
        candidate.Country__c ='Australia';
        candidate.Name = 'Ashish';
        candidate.First_Name__c = 'Ashish';
        candidate.Last_Name__c = 'Upadhey';
        candidate.Email__c = 'ashish@gmail.com';
        candidate.State__c = 'Victoria';
        candidate.Country__c = 'Australia';
        candidate.Status__c = 'Hired';
        candidate.Job__c = 'a012x00000A2Owl';
  
        candidate.Application_Date__c =Date.newInstance( 2020, 07, 04);
        
        Test.startTest();
        candidate.Expected_Salary__c=12000;
        insert candidate;
        Test.stopTest();
        
        List<Candidate__c>  collectList =[SELECT ID , Application_Date__c,Expected_Salary__c FROM Candidate__c WHERE Job__c =:'a012x00000A2Owl'];
        System.assertEquals(1, collectList.size());
        System.assertEquals(12000, collectList[0].Expected_Salary__c);
        System.assertEquals(System.today()+1, collectList[0].Application_Date__c);
        
    }    
    
}