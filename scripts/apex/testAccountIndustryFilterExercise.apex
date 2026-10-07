List<Account> cuentas = [SELECT Id, Name, Industry FROM Account];
Map<Id, Account> cuentasRegreso = AccountIndustryFilterExercise.industryFilterExercise(cuentas);
System.debug('Las cuentas que quedaron en el mapa son: ' + cuentasRegreso);
