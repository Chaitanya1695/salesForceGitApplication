trigger CandidateTrigger on Candidate__c (before insert) 
{
  // candidateTriggerHandler.notApplyForInactiveJob(Trigger.New);
    if(Trigger.isInsert && Trigger.isBefore)
    {
        candidateTriggerHandler.checkSalaryNull(Trigger.New);
        candidateTriggerHandler.checkApplicationDate(Trigger.New);
       // candidateTriggerHandler.notApplyForInactiveJob(Trigger.New);
        candidateTriggerHandler.notApplyForInactiveJob();
    }
  /*if(!TriggerActivateDeactivate__c.getInstance().Is_Activate__c)
  {
    if(Trigger.isInsert && Trigger.isBefore)
    {
        candidateTriggerHandler.checkSalaryNull(Trigger.New);
        candidateTriggerHandler.checkApplicationDate(Trigger.New);
       
    }
    
  }*/
}