public class SendEmail {

    public static void SendToCandidate(List<ID> candidateId)
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        List<Candidate__c> toAddresses = [SELECT Email__c FROM Candidate__c where Id=:candidateId ] ;
        
        String[] emailField =new String[]{toAddresses[0].Email__c};
        mail.setToAddresses(emailField);
        mail.setReplyTo('cgirhepunje@gmail.com');
        mail.setSenderDisplayName('CRM Support');
        mail.setBccSender(false);
        mail.setUseSignature(false);
        Messaging.EmailFileAttachment fa=new Messaging.EmailFileAttachment();
        fa.setFileName('abcd');
    
    }
}