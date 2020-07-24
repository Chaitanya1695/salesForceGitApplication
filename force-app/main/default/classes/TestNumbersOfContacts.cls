@isTest
public class TestNumbersOfContacts {

   
    
/*    @TestSetup 
    static void setupMethod()
    {
        Account objAccount = new Account(Name='AshishU');
        insert objAccount;
        Contact objContact = new Contact(AccountId='objAccount.Id',LastName='Upadhey');
        insert objContact;
    }*/
    
   @isTest
    public static void testMethod1(){
        Account objAccount = new Account(Name='dhanshree');
        insert objAccount;
        System.debug(objAccount.Id);
        Contact objContact = new Contact(AccountId=objAccount.Id,LastName='shaikh');
        
        Test.startTest();
        insert objContact;
        Test.stopTest();
        
        Account objAccount1 = [SELECT ID,NAME,Number_Of_Contacts__c,(SELECT ID,LASTNAME FROM Contacts) FROM Account];
        System.assertEquals(1, objAccount1.Number_Of_Contacts__c);       
       
        
    }
    
    
      @isTest
      public static void testMethod2(){
        Account objAccount = new Account(Name='AshishU');
        insert objAccount;
        Contact objContact = new Contact(AccountId=objAccount.Id,LastName='Upadhey');
        insert objContact;
        
        Test.startTest();
        objContact.LastName ='Asha';
        update objContact;
      //update objAccount;
        Test.stopTest();
        
       System.assertEquals('Asha', objContact.LastName);       
       
        
    }
    
    @isTest
    public static void testMethod3(){
        Account objAccount = new Account(Name='dhanshree');
        insert objAccount;
        System.debug(objAccount.Id);
        Contact objContact = new Contact(AccountId=objAccount.Id,LastName='shaikh');
        insert objContact;
        
        Test.startTest();
        delete objContact;
        Test.stopTest();
        
        Account objAccount1 = [SELECT ID,NAME,Number_Of_Contacts__c,(SELECT ID,LASTNAME FROM Contacts) FROM Account];
        System.assertEquals(0, objAccount1.Number_Of_Contacts__c);       

    }
    
     
    
     
    
    
      
    
    
}