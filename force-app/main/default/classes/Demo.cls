public with sharing class Demo {
  @AuraEnabled(cacheable=true)
  public static list<Account> Demo() {
    list<Account> accounts = [SELECT Id, Name FROM Account];
    system.debug('hello world');
    return accounts;
  }
}
