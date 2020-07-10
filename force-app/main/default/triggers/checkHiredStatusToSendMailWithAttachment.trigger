trigger checkHiredStatusToSendMailWithAttachment on Candidate__c ( after insert,after update) {

    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isAfter )
    {
        HiredStatusMailAttachmentTriggerHandler.checkHiredStatus(Trigger.New);
    }
    
}