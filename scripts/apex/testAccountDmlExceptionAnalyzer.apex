List<Account> cuentasNuevas = new List<Account>();
cuentasNuevas.add(new Account(Name='Veronica', Industry='Banking', NumberOfEmployees=5));
cuentasNuevas.add(new Account(Name='Adriana', Industry='Technology', NumberOfEmployees=0));
AccountDmlExceptionAnalyzer.dmlExceptionAnalyzer(cuentasNuevas);