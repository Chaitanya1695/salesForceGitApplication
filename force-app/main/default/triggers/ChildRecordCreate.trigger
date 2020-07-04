trigger ChildRecordCreate on Account (before insert) {

    List<Contact> acc = new List<Contact>();
    for(Account data : Trigger.New)
    {
        Contact c =new Contact();
       c.LastName=data.Name;
        acc.add(c);
    }
    
    if(acc.size()>0)
    {
        System.debug(acc[0]);
    }
    
}