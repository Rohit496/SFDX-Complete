trigger AccountTrigger1 on Account(before insert, before update) {
    for (Account testAccount : Trigger.new) {
        System.debug(testAccount);
    }
    for (Integer i = 0; i < Trigger.new.size(); i++) {
        Trigger.new[i].Name = 'Test Account' + i;
        Trigger.new[i].AccountNumber = String.valueOf(i);
    }
    for (Account testAccount : Trigger.new) {
        System.debug(testAccount);
    }
    System.debug(Trigger.new);
}
