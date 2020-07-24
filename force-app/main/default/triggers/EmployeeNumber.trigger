trigger EmployeeNumber on Account (after insert) {


    HandlerAccount.changeNumber(Trigger.New);


}