trigger CandidateTrigger on Candidate__c (before insert,after insert,after update) 
{
    //If(!TriggerActivateDeactivate__c.getInstance().Is_Activate__c){
    
    If(Trigger.isInsert){
        If(Trigger.isBefore){
            candidateTriggerHandler.checkSalaryNull(Trigger.New);
            candidateTriggerHandler.notApplyForInactiveJob();
        }
    }
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isAfter )
    {
        
        candidateTriggerHandler.checkHiredStatus(Trigger.New);
    }
    
    //}
}