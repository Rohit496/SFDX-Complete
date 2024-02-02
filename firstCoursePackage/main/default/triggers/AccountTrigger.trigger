trigger AccountTrigger on Account(before insert, before update) {
    // call my Account handler class here to handle the trigger
    AccountHnadler.setAccountNames(Trigger.new);

}
