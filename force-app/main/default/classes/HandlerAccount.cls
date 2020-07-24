public with sharing class HandlerAccount {
    
    public static void changeNumber(List<Account> listAccount){
    
        List<Account> objAccount = [Select Id From Account];
        for(Account data : objAccount){
            data.NumberOfEmployees = 550;
         
        }
        update objAccount;
    }

}