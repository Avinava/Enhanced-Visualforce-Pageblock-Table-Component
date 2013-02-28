public class EnhancedPageBlockTableDemo_Con {
     /*
    *Return list of records to be displayed(can be any sobject)
    **/
    public List<Account> getAccounts(){
        return [SELECT Name,AccountNumber,Type,Phone,Rating FROM Account];
    }
    
    /*
    *Return list of field to be displayed in the table
    **/
    public List<String> getFields(){
        return new List<String>{'Name','AccountNumber','Type','Phone','Rating'};
    }
    
    static testMethod void runTest(){
        EnhancedPageBlockTableDemo_Con con = new EnhancedPageBlockTableDemo_Con();
        con.getAccounts();
        con.getFields();
    }
}