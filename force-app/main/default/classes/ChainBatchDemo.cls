public class ChainBatchDemo implements Database.Batchable<SObject>{

public Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator('SELECT id, name from Account');
    }
    public void execute(Database.BatchableContext bc,List<Account> dataFromStartMethod)
    {
      for (Account acc: dataFromStartMethod)
      {
          acc.Name += '1' ;
      }
        UPDATE dataFromStartMethod;
              
    }
      public void finish(Database.BatchableContext bc){

        System.debug('Chain Batch process done ');
    }
    
    
}