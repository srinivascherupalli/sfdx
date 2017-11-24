public with sharing class CRIT_Update_Contact_Info {
    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> AccountList = [SELECT Id, Name FROM Account LIMIT 50];
        return AccountList;
    }
}
