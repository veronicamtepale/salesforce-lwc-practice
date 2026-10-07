List<Account> nuevasCuentas = new List<Account>();
nuevasCuentas.add(new Account(Name= 'Prueba 1'));
nuevasCuentas.add(new Account(Name= 'Prueba 2', Industry = 'Banking'));
insert nuevasCuentas;

Set<Id> identidadCuentas = new Set<Id>();
for(Account ac : nuevasCuentas){
    identidadCuentas.add(ac.Id);
}

List<Account> cuentasCorrectas = [SELECT Id, Name, Industry FROM Account WHERE Id IN :identidadCuentas];
System.debug('Las cuentas de este Trigger es: ' + cuentasCorrectas);