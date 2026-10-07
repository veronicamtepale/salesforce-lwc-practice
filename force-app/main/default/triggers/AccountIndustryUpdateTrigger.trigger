trigger AccountIndustryUpdateTrigger on Account (before update) {
    for(Account ac : Trigger.new){
        Account cuentaAnterior = Trigger.oldMap.get(ac.Id);
        if((cuentaAnterior.Industry == 'Banking') && (ac.Industry == 'Technology')){
            ac.Rating = 'Hot';
        }
    }
}