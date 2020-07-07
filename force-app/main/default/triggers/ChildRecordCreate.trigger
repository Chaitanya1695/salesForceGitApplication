trigger ChildRecordCreate on Account (before insert) {

    List<Contact> acc = new List<Contact>();
    for(Account data : Trigger.New)
    {
        Contact c =new Contact();
       c.LastName=data.Name;
        acc.add(c);
    }
    insert acc;
    
  
    
}