trigger AccountPriorityAfterUpdateTrigger on Account (after update) {
    List<Task> nuevasTareas = new List<Task>();
    for(Account ac : Trigger.new){
        Account cuentaVieja = Trigger.oldMap.get(ac.Id);
        if((cuentaVieja.Type != 'Customer - Direct') && (ac.Type == 'Customer - Direct')){
            Task nuevaTarea = new Task();
            nuevaTarea.Subject = 'Contact new direct customer';
            nuevaTarea.Status = 'Not Started';
            nuevaTarea.Priority = 'Normal';
            nuevaTarea.WhatId = ac.Id;
            nuevasTareas.add(nuevaTarea);
        }
    }
    if(!nuevasTareas.isEmpty()){
        insert nuevasTareas;
    }
}

