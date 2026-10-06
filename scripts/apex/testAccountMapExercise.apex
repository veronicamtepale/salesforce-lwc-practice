List<Account> cuentasResultados = [SELECT Id, Name, Industry FROM Account];
Map<Id,Account> account = AccountMapExercise.mapExercise(cuentasResultados);
Account primeraCuenta = cuentasResultados[0];
Account cuenta = account.get(primeraCuenta.Id);
System.debug('La cuenta recuperada del Map es: ' + cuenta);