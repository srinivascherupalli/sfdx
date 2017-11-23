public with sharing class CRIT_SFDX {
    @AuraEnabled
 	public static List<Contact> getContacts() {
        List<Contact> ContactList = [SELECT Id, FirstName FROM Contact LIMIT 50];
        return ContactList;
  	}
    
    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> AccountList = [SELECT Id, Name FROM Account LIMIT 50];
        return AccountList;
    }
}