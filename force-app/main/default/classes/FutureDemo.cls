global class FutureDemo {

    
    public FutureDemo()
    {
        firstMethod();
        secondMethod();
        thirdMethod();
    }
    @future
    public static void firstMethod()
    {
       // secondMethod();
        System.debug('In future first method');
    }
    
    @future
    public static void secondMethod()
    {
       // firstMethod();
        List<Account> accountList = [SELECT name from Account];
        for(Account a:accountList)
        {
            System.debug(a);
        }
        System.debug('In future second method');
    }
    
    public static void thirdMethod()
    {
        System.debug('In future third method');
    }
}