trigger AccountHotRatingAfterUpdateTrigger on Account (after update) {
    List<Task> tareasNuevas = new List<Task>();
    for(Account ac : Trigger.new){
        Account cuentaVieja = Trigger.oldMap.get(ac.Id);
        if((cuentaVieja.Rating != 'Hot') && (ac.Rating == 'Hot')){
            Task nuevaTarea = new Task();
            nuevaTarea.Subject = 'Follow up with Hot Account';
            nuevaTarea.Status = 'Not Started';
            nuevaTarea.Priority = 'High';
            nuevaTarea.WhatId = ac.Id;
            tareasNuevas.add(nuevaTarea);
        }
    }
    if(!tareasNuevas.isEmpty()){
        insert tareasNuevas;
    }
}