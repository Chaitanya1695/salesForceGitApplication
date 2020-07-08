public class SchedularDemo implements Schedulable{

    public void execute(SchedulableContext context){    
    EmailManager.sendMail('cgirhepunje95@gmail.com', 'subject', 'data is there');
    }
}