@IsTest
public with sharing class Demo_Test {
  static testMethod void testDemo() {
    test.startTest();
    List<Account> accounts = Demo.Demo();
    test.stopTest();
    system.assertEquals(1, accounts.size());
  }

  @testSetup
  static void makeData() {
    account a = new Account();
    a.Name = 'test acct';
    insert a;
  }
}
