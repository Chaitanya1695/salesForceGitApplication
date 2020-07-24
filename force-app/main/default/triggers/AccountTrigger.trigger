trigger AccountTrigger on Account (before update) 
{
    DemoClass.updateDemo();
}