trigger T1 on Account (before insert) {
if( !TriggerActivateDeactivate__c.getInstance().Is_Activate__c)
{
Account a = Trigger.New[0];

if(a.AnnualRevenue==NULL)
{
a.addError('AnnualRevenue is not null');
}
}
}