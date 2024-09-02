public class OpportunityTrigger_BuilderPattern_Test {
  static testMethod void validateState() {
    OppTestData_Director director = new OppTestData_Director();
    Opportunity opp = director.Construct(new OppTestData_ValidOfficeImpl());

    Test.startTest();
    insert opp;
    Test.stopTest();

    Opportunity oppInserted = [
      SELECT Area_Office__c
      FROM Opportunity
      WHERE Id = :opp.Id
    ];

    Assert.areNotEqual(null, oppInserted.Area_Office__C);
  }
}
