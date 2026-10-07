List<Account> cuentasSolicitadas = new List<Account>();
cuentasSolicitadas.add(new Account(Name = 'Tech Grande', Industry='Technology', NumberOfEmployees=100));
cuentasSolicitadas.add(new Account(Name = 'Tech Sin Empleados', Industry='Technology'));
cuentasSolicitadas.add(new Account(Name = 'Tech Pequeña', Industry='Technology', NumberOfEmployees=20));
cuentasSolicitadas.add(new Account(Name = 'Banco Grande', Industry='Banking', NumberOfEmployees=200));
insert cuentasSolicitadas;

Map<Id, Account> cuentasEsperadas = AccountNullHandlingExercise.nullHandlingExercise(cuentasSolicitadas);
System.debug('Las cuentas esperadas son: ' + cuentasEsperadas);