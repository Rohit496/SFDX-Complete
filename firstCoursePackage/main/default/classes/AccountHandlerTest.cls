@isTest
private class AccountHandlerTest {
    @IsTest
    // added the method
    static void setAccountNames() {
        Test.startTest();
        insert new Account(Name = 'Different');
        Test.stopTest();
        Account newAccount = [SELECT Id, Name FROM Account LIMIT 1];
        System.assert(newAccount.Name == 'Test');
    }
}
