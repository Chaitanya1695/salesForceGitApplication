global with sharing class DemoWithShareVfPage {
    
    Account objAccount {get;set;}
    
    global DemoWithShareVfPage(){
        getInsertDetails();
    }
    public List<Account> getInsertDetails()
    {
        insert new Account(Name='Test'+UserInfo.getUserName());
        return null;
    }
    

}