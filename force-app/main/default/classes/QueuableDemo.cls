public class QueuableDemo implements Queueable{

    public void execute(QueueableContext context)
    {
       Account a = new Account(Name='Nadiana',Phone='(415) 555-1266');
       insert a;
        System.enqueueJob(new SecondQueueableDemo());
    }
    
}