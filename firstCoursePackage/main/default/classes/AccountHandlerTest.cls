@isTest
private class AccountHandlerTest {
    @IsTest
    // added the method to test the setAccountNames method
    static void setAccountNames() {
        Test.startTest();
        insert new Account(Name = 'Different');
        Test.stopTest();
        Account newAccount = [SELECT Id, Name FROM Account LIMIT 1];
        // System.assert(newAccount.Name == 'est');
    }
}
