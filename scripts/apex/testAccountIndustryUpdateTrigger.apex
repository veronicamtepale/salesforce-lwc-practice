List<Account> cuenta = new List<Account>();
cuenta.add(new Account(Name='Pati', Industry='Banking'));
insert cuenta;

cuenta[0].Industry = 'Technology';

update cuenta;

Account cuentaCorrecta = [SELECT Id, Name, Industry, Rating FROM Account WHERE Id = :cuenta[0].Id];
System.debug('La cuenta actualizada fue: ' + cuentaCorrecta);
