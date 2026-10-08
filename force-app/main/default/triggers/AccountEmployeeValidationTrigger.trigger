trigger AccountEmployeeValidationTrigger on Account (before insert, before update) {
    for(Account ac : Trigger.new){
        if(ac.Industry == 'Technology' && (ac.NumberOfEmployees == null || ac.NumberOfEmployees <=0)){
            ac.addError('Technology accounts must have at least one employee.');
            // ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ 
            //Bloque el guardado del registro y muestra ese error 
        }
    }
}
