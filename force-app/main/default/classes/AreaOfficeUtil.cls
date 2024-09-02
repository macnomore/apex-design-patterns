public class AreaOfficeUtil {
  private List<Area_Office__c> lstAllOffices;
  private Map<String, Area_Office__c> mpAllOffices;

  private static AreaOficeUtil selfInstance = null;

  public static AreaOfficeUtil getInstance() {
    if (selfInstance == null) {
      selfInstance = new AreaOfficeUtil();
    }
    return selfInstance;
  }

  private AreaOfficeUtil() {
    lstAllOffices = [
      SELECT Name, City__c, State__c, Manager__c, Head_Count__c
      FROM Area_Office__c
      LIMIT 2000
    ];
    mpAllOffices = new Map<String, Area_Office__c>();
    for (Area_Office__c ofc : lstAllOffices) {
      mpAllOffices.put(ofc.State__c + '-' + ofc.City__c, ofc);
    }
  }

  public Area_Office__c getOffice(String State, String city) {
    return mpAllOffices.get(state + '-' + city);
  }
}
