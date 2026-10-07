List<Account> nuevasCuentas = new List<Account>();
nuevasCuentas.add(new Account(Name='Olivia', Rating='Warm'));
nuevasCuentas.add(new Account(Name='Luisa', Rating='Hot'));
insert nuevasCuentas;

for(Account ac : nuevasCuentas){
    if(ac.Rating == 'Warm'){
        ac.Rating = 'Hot';
    }
}
update nuevasCuentas;

Set<Id> idsCuentas = new Set<Id>();
for(Account ac : nuevasCuentas){
    idsCuentas.add(ac.Id);
}

List<Task> tareas = [SELECT Id, Subject, Status, Priority, WhatId FROM Task WHERE WhatId IN :idsCuentas];
System.debug('Las tareas creadas son: ' + tareas);