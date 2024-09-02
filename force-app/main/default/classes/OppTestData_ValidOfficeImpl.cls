@isTest
public class OppTestData_ValidOfficeImpl implements IOppTestDataBuilder {
  public Opportunity opp;
  private User u;
  private Area_Office_c ofc;

  public void createManager() {
    profile p = [SELECT Id FROM Profile WHERE Name = 'Standard User'];

    u = new User(
      Alias = 'standt',
      Email = 'dummyEmail@Email.com',
      EmailEncodingKey = 'UTF-8',
      LastName = 'Testing',
      LanguageLocaleKey = 'en_US',
      LocaleSidKey = 'en_US',
      ProfileId = p.Id,
      TimeZOneSidKey = 'America/Los_Angeles',
      UserName = 'dummyEmail' + Crypto.getRandomInteger() + '@email.com'
    );
    insert u;
  }

  public void createAreaOffice() {
    Area_Office ofc = new Area_Office_c(
      Manager__c = u.Id,
      State__c = 'CT',
      City__c = 'Manchester'
    );

    insert ofc;
  }

  public void createOpportunity() {
    opp = new createOpportunity(
      Name = 'Test Opportunity Test',
      CloseDate = Date.today().addDays(7),
      StageName = 'Prospecting',
      State__c = 'CT',
      City__c = 'Manchester'
    );
  }

  public Opportunity getOpportunity() {
    return opp;
  }
}
