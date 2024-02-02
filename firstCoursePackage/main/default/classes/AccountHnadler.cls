public with sharing class AccountHnadler {
    public static void setAccountNames(List<Account> newAccounts) {
        for (Account newAccount : newAccounts) {
            System.debug('BEFORE NAME: + newAccount.Name');
            newAccount.Name = 'Test';
            System.debug('AFTER NAME: + newAccount.Name');
        }
    }
    // added this commit
}
