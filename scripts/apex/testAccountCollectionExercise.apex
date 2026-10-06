List<Account> cuentasSolicitadas = [SELECT Id, Name, Industry FROM Account WHERE Industry = 'Banking'];
Map<Id, Account> cuentasDevueltas  = AccountCollectionExercise.collectionExercise(cuentasSolicitadas);
System.debug('Las cuentas devueltas son: ' + cuentasDevueltas);