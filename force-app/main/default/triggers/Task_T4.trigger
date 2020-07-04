trigger Task_T4 on Job__c (after insert,after update) {

List<Job__c> job = new List<Job__c>();
  for(Job__c data :[SELECT Number_of_Positions__c, Hired_Applicants__c,Active__c FROM Job__c WHERE Active__c=true ] )
  {
     if(data.Hired_Applicants__c==data.Number_of_Positions__c)
     {
       data.Active__c=false;
       job.add(data);
       
     }
  }
    if(job.size()>0)
    {
update job;
    }

}