public class OppTestData_Director {
  public Opportunity Construct(IOppTestDataBuilder oppBuilder) {
    oppBuilder.createManager();
    oppBuilder.createAreaOffice();
    oppBuilder.createOpportunity();
    return oppBuilder.getOpportunity();
  }
}
