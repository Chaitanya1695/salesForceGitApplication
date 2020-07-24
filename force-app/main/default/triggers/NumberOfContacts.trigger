trigger NumberOfContacts on Contact (after insert,after update,after delete ,after undelete) {

   HandlerNumberOfContacts.NumberOfContact();
    
}