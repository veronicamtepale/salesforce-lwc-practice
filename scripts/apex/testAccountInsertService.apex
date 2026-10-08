List<Account> cuentaNueva = new List<Account>();
cuentaNueva.add(new Account(Name='Moises', Industry='Banking'));
cuentaNueva.add(new Account(Name='Jaime', Industry='Technology', NumberOfEmployees=0));

AccountInsertService.insertService(cuentaNueva);

