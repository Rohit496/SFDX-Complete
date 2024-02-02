trigger AccountTrigger on Account(before insert, before update) {
    // call my Account handler class here
    AccountHnadler.setAccountNames(Trigger.new);

}
