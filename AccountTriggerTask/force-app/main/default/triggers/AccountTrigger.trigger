trigger AccountTrigger on Account (before insert) {
	if(Trigger.IsInsert && Trigger.isBefore){
        AccountTriggerHandler.executeBeforeMethod(Trigger.New);
    }

}