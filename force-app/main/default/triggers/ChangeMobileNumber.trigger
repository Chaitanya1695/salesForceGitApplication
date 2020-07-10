trigger ChangeMobileNumber on demo_info__c (before insert) {

List<demo_info__c> listData = Trigger.New;

for( demo_info__c data  : listData )
{
  // data.emailsabcd__c=data.emailsabcd__c;
   // data.Name=data.Name;
    data.mobile__c=123;
    //listData.add(data);
}


}