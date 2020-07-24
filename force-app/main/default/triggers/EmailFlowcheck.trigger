trigger EmailFlowcheck on Contact (before insert) {

    List<Contact> contactList = new List<Contact>();
    EmailManager.sendMail('cgirhepunje95@gmail.com', 'Send email', 'data send flow execution');
    for(Contact data: Trigger.New){
        if(data.MobilePhone == NULL)
        {
            data.MobilePhone = '123456';
        }
    }
    
}