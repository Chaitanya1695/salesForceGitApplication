public class ScheduleJobExpire implements Schedulable{

    public void execute(SchedulableContext contexts){
      
        List<Job__c> jobList = [SELECT Expires_On__c ,Active__c FROM Job__c WHERE Expires_On__c < today ];
        for(Job__c data : jobList )
        {           
            data.Active__c=false;
        }
        if(jobList.size()>0)
        {
            update jobList;
        }
        
    }
    
}