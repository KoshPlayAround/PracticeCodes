public class TH_BillingtoshippingTriggerHandler {
    public static void executeBeforeMethod(List<Account> newAccountList){
        if(!newAccountList.isEmpty() && newAccountList.size()>0){
            for(Account ac : newAccountList){
                if(ac.BillingAddress != null || ac.BillingCity != null || ac.BillingCountry != null || ac.BillingPostalCode != null || ac.BillingState != null || ac.BillingStreet != null){
                    ac.ShippingCity = ac.BillingCity;
                    ac.ShippingCountry = ac.BillingCountry;
                    ac.ShippingPostalCode = ac.BillingPostalCode;
                    ac.ShippingState = ac.BillingState;
                    ac.ShippingStreet = ac.BillingStreet;
                }  
            }
        }
    }
}