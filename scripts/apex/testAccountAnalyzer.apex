List<Account> resultados = AccountAnalyzer.getLargeAccounts();
System.debug('Tus cuentas son estas: ' + resultados);

Integer resultadosCount = AccountAnalyzer.countAccounts();
System.debug('Tus cuentas son estas: ' + resultadosCount);

List<AggregateResult> resultadosGroup = AccountAnalyzer.countAccountsByIndustry();
for(AggregateResult ar : resultadosGroup){
    String industria = (String) ar.get('Industry'); //EL 2do ' (String) ' es como decirle "tratalo como String" a eso se llama 'Casting'
    Integer total = (Integer) ar.get('total'); // "Tratalo como Integer"
    System.debug('Industria: ' + industria + ' | Total: ' + total);
}


AccountAnalyzer.createSampleAccounts();
List<Account> resultadosLista = AccountAnalyzer.getAccountsByIndustry('Technology');
System.debug('Tu industria es: ' + resultadosLista);


Account cuenta = [SELECT Id, Name, Industry FROM Account WHERE Name = 'Rivers' LIMIT 1];
AccountAnalyzer.updateAccountIndustry(cuenta.Id, 'Healthcare');
Account cuentaActualizada = [SELECT Id, Name, Industry FROM Account WHERE Id = :cuenta.Id LIMIT 1];
System.debug('Cuenta: ' + cuentaActualizada.Name + ' | Nueva industria: ' + cuentaActualizada.Industry); 

//DELETE EXAMPLE
Account cuentaEliminada = [SELECT Id, Name, Industry FROM Account WHERE Name = 'Caprimint' LIMIT 1];
AccountAnalyzer.deleteAccount(cuentaEliminada.Id);
List<Account> cuentaEliminadaActualizada = [SELECT Id, Name, Industry FROM Account WHERE Id =:cuentaEliminada.Id];
System.debug('Cuentas eliminadas: ' + cuentaEliminadaActualizada.size()); 

// UPSERT (insert ) EXAMPLE
Account newAccount = new Account(Name = 'Arigameplays');
AccountAnalyzer.upsertAccount(newAccount);
System.debug('La nueva cuenta insertada es: ' + newAccount);
// UPSERT (update) EXAMPLE
newAccount.Industry = 'Technology';
AccountAnalyzer.upsertAccount(newAccount);
System.debug('La cuenta actualizada es: ' + newAccount.Industry); 

// UNDELETE EXAMPLE
Account acGhost = [SELECT Id, Name, Industry FROM Account WHERE Name = 'Rivers' LIMIT 1];
AccountAnalyzer.deleteAccount(acGhost.Id);
System.debug('La cuenta ha sido eliminada: ' + acGhost);
Account account = [SELECT Id, Name, Industry FROM Account WHERE Id= :acGhost.Id ALL ROWS];
AccountAnalyzer.undeleteAccount(account);
System.debug('La cuenta recuperrada ha sido: ' + acGhost.Name); 

// MASSIVE UPDATES EXERCISE
List<Account> acNew = new List<Account>();
acNew.add(new Account(Name='Chavo', Industry='Technology'));
acNew.add(new Account(Name='Chilindrina', Industry='Banking'));
acNew.add(new Account(Name='Ñoño', Industry='VP Salesforce'));
acNew.add(new Account(Name='Don Ramon', Industry='Technology'));
acNew.add(new Account(Name='Quico', Industry='Banking'));
insert acNew;
AccountAnalyzer.massiveUpdate(acNew);
Set<Id> idNewAccounts = new Set<Id>();
for(Account aN : acNew){
    idNewAccounts.add(aN.Id);
}
List<Account> cuentasActualizadas = [SELECT Id, Name, Industry FROM Account WHERE Id IN :idNewAccounts];
//                                                                         ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓
//                                                               trae todas las Accounts cuyo Id esté dentro de ese Set<Id>
System.debug('La lista actualizada es: ' + cuentasActualizadas);


