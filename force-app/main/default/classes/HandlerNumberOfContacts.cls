public class HandlerNumberOfContacts {
   
    
    public static void NumberOfContact(){
        
        List<Contact> conNewList= Trigger.New;
        List<Contact> conOldList = Trigger.Old;
        
        Set<Id> accountIdsSet = new Set<Id>();
        List<Account> accountListUpdated = new List<Account>();
        
        IF(Trigger.IsAfter ){
            IF(Trigger.IsInsert || Trigger.IsUpdate || Trigger.IsUndelete){
                FOR(Contact objContact : conNewList){
                    if(objContact.AccountId != Null){
                        accountIdsSet.add(objContact.AccountId);
                    }
                    
                }
                
            }
            IF(Trigger.IsDelete){
                FOR(Contact objContact :conOldList){
                    if(objContact.AccountId != Null){
                        
                        accountIdsSet.add(objContact.AccountId);
                    }
                }
                
            }
            
        }
        
        List<Account> accountList = new List<Account>([SELECT Id,Name,Number_Of_Contacts__c,(SELECT ID , Name FROM Contacts)FROM Account WHERE ID IN:accountIdsSet ]); 
        
        For(Account objAccount : accountList){
            List<Contact> contactList = objAccount.Contacts;
            objAccount.Number_Of_Contacts__c = contactList.size();
            System.debug(objAccount.Number_Of_Contacts__c);
            accountListUpdated.add(objAccount);
            
        }
        
        update accountListUpdated;
        
        
        
    }
    
    
}