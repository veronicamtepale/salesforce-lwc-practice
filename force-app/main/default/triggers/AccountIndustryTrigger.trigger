trigger AccountIndustryTrigger on Account (before insert) {
    for(Account ac : Trigger.new){
        if(ac.Industry == null){
            ac.Industry = 'Technology';
        }
    }
}