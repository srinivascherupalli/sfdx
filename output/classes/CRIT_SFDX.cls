public with sharing class CRIT_SFDX {
    @AuraEnabled
 	public static List<Contact> getContacts() {
        List<Contact> ContactList = [SELECT Id, FirstName FROM Contact LIMIT 50];
        return ContactList;
  	}
}