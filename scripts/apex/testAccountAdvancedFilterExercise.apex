List<Account> cuentas = new List<Account>();
cuentas.add(new Account(Name='Rivers', Industry='Technology', NumberOfEmployees=100));
cuentas.add(new Account(Name='Nezumi', Industry='Banking', NumberOfEmployees=75));
cuentas.add(new Account(Name='AriGameplays', Industry='Technology', NumberOfEmployees=85));
cuentas.add(new Account(Name='Molly', Industry='Banking', NumberOfEmployees=20));
cuentas.add(new Account(Name='Caprimint', Industry='Retail', NumberOfEmployees=200));
insert cuentas;

Map<Id, Account> cuentasReturn = AccountAdvancedFilterExercise.advancedFilterExercise(cuentas);
System.debug('las cuentas recibidas son: ' + cuentasReturn);