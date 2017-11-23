@isTest
public class CRIT_SFDX_TEST {
	public 	static testMethod void testMethod1()
    {
        Test.startTest();
        User U = [SELECT Id FROM User WHERE IsActive=true LIMIT 1];
        Contact testContact = new Contact();
        testContact.Salutation = 'Mr';
        testContact.FirstName = 'srini1';
        testContact.LastName = 'test';
        testContact.Email = 'srini@test.com';
        insert testContact;
        CRIT_SFDX.getContacts();
        Test.stopTest();
    }
}