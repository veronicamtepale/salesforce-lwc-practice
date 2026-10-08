List<Account> nuevasCuentas = new List<Account>();
nuevasCuentas.add(new Account(Name='Cuenta 1', Type='Prospect'));
nuevasCuentas.add(new Account(Name='Cuenta 2', Type='Customer - Direct'));

insert nuevasCuentas;

for(Account ac : nuevasCuentas){
    if(ac.Type == 'Prospect'){
        ac.Type = 'Customer - Direct';
    }
}

update nuevasCuentas;

Set<Id> conjuntoCuentas = new Set<Id>();
for(Account ac : nuevasCuentas){
    conjuntoCuentas.add(ac.Id);
}

List<Task> cuentasSolicitadas = [SELECT Id, Subject, Status, Priority, WhatId FROM Task WHERE WhatId IN :conjuntoCuentas];
System.debug('Las task creadas son: ' + cuentasSolicitadas);