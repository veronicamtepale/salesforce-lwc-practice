List<Account> cuentasCreadas = new List<Account>();
cuentasCreadas.add(new Account(Name='Juan', Industry='Technology'));
cuentasCreadas.add(new Account(Name='Auron', Industry='Banking'));

insert cuentasCreadas;

Set<Id> cuentasIdentificador = new Set<Id>();
for(Account ac : cuentasCreadas){
    cuentasIdentificador.add(ac.id);
}

List<Contact> consulta = [SELECT Id, LastName, AccountId FROM Contact WHERE AccountId IN :cuentasIdentificador];
System.debug('Los contactos creados son: ' + consulta);