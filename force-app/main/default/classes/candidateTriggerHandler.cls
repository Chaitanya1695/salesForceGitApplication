public class candidateTriggerHandler {
    
    public static void  checkSalaryNull(List<Candidate__c> candidateList)
    {
        for(Candidate__c  data:candidateList)
        {
            if(data.Expected_Salary__c==NULL)
            { 
                data.addError('Expected Salary field is missing trigger');
            }
            data.Application_Date__c=system.today();
        }
        
    }
    
    public static void notApplyForInactiveJob()
    {
        Map<id,Job__c> mapForjob =new Map<id,Job__c>([SELECT id FROM Job__c WHERE Active__c = false Limit 50000]);
        // Map<id,Job__c> mapForjob1 =new Map<id,Job__c>([SELECT id from Job__c WHERE Id not In : mapForjob.keySet() and Active__c = false]);
        for(Candidate__c canObj :(list<Candidate__c>) Trigger.New)
        {
            if(mapForjob.containsKey(canObj.Job__c))
            {
                canObj.addError('This job is not active');
            }
        } 
    }
    
    public static void  checkHiredStatus(List<Candidate__c> candidateNewList)
    {
        List<ID> ids=new List<ID>();
        for(Candidate__c data : candidateNewList)
        {
            if(data.Status__c == 'Hired')
            {               
                ids.add(data.id);             
            }
        } 
        if(ids.size()>0){
            SendEmail.SendToCandidate(ids);
        }     
    }  
}



   
        /*
public static void checkApplicationDate(List<Candidate__c> candidateList)  
{
for(Candidate__c data:candidateList)
{
data.Application_Date__c=system.today();
}
}*/
        /*
* 1St Method
---------

List<Job__c> jobList1 = [SELECT id from Job__c WHERE Active__c !=true];
for(Candidate__c data : candidateList)
{
string jobname=data.Job__c;
for(Job__c job:jobList1)
{
if(job.id==jobname)
{
data.addError('This job is not active So You can not apply for this job'); 
}
}

}
-----


for(Candidate__c data: candidateList)
{
if(!data.Job__r.Active__c)
{
data.addError('This job is not active So You can not apply for this job');
}
}      */