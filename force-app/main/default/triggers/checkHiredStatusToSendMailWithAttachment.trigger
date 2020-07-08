trigger checkHiredStatusToSendMailWithAttachment on Candidate__c ( after update) {

    if(Trigger.isUpdate && Trigger.isAfter)
    {
        HiredStatusMailAttachmentTriggerHandler.checkHiredStatus(Trigger.New);
    }
    
}