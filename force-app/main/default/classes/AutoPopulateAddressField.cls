public class AutoPopulateAddressField {

    @InvocableMethod
    public static void updateAddressField(List<ID> accountId)
    {
     
      
      List<Account> accountList = [ SELECT Name,BillingCity,BillingCountry,BillingPostalCode,BillingState,BillingStreet FROM Account WHERE ID in : accountId];  
     // List<Contact> contactList = new List<Contact>();
                        
        for(Account data : accountList )
        {
            Contact newContact = new Contact();
            
            newContact.LastName=data.Name;
            
            newContact.MailingCity = data.BillingCity;
            newContact.MailingCountry= data.BillingCountry;
            newContact.MailingPostalCode=data.BillingPostalCode;
            newContact.MailingState = data.BillingState;
            newContact.MailingStreet = data.BillingStreet;
            //contactList.add(newContact);
        }
        
        //insert contactList;
       
        
    }
    
    
}