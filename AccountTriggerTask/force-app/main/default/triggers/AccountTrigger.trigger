trigger AccountTrigger on Account (before insert) {
	if(Trigger.IsInsert && Trigger.isBefore){
        TH_BillingtoshippingTriggerHandler.executeBeforeMethod(Trigger.New);
    }

}