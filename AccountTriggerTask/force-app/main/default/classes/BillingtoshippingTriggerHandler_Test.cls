@isTest
public class BillingtoshippingTriggerHandler_Test {
    static testMethod void methodTest1(){
        List<Account> acList = new List<Account>();
        for(Integer i = 1;i<=100;i++){
            Account ac = new Account();
            ac.Name = 'test '+i;
            ac.BillingCity = 'test City '+i;
            ac.BillingCountry ='test Country '+i;
            ac.BillingState ='test State '+i;
            ac.BillingStreet ='test Street '+i;
            acList.add(ac);
                }
        insert acList;
        TH_BillingtoshippingTriggerHandler.executeBeforeMethod(acList);
        
    }
    
}