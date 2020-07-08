public class BatchDemo implements Database.Batchable<SObject>{
 
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator('SELECT id, name from Account');
    }
    
    public void execute(Database.BatchableContext bc,List<Account> dataFromStartMethod)
    {
      for (Account acc: dataFromStartMethod)
      {
          acc.Name += 'New' ;
      }
        UPDATE dataFromStartMethod;
              
    }
    
    public void finish(Database.BatchableContext bc){
          
        System.debug('Batch process done ');
        Database.executeBatch(new ChainBatchDemo(), 5);
    }
    
    

}