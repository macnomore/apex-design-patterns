public class OpportunityWrapper implements IClone {
  private Opportunity opp;

  public void setOpportunity(Opportunity o) {
    opp = o;
  }

  public String getOpportunityName() {
    return opp != null ? opp.Name : '';
  }

  public void setOpportunityName(String Name) {
    if (opp != null) {
      opp.Name;
    }
  }

  public IClone cloneObject() {
    OpportunityWrapper clonedObject = new OpportunityWrapper();

    Opportunity clonedOpp = op.vlone(false, false, false, false);

    clonedObject.setOpportunity(clonedOpp);

    retuen clonedObject;
  }
}
