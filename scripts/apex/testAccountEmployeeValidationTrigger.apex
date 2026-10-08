List<Account> cuentaNueva = new List<Account>();
cuentaNueva.add(new Account(Name='Dulce', Industry='Technology', NumberOfEmployees= 100));
cuentaNueva.add(new Account(Name='Cristina', Industry='Technology', NumberOfEmployees= 0));

Database.SaveResult[] resultados = Database.insert(cuentaNueva, false);
// ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ 
// Resultado de intentar guardar un registro
for(Database.SaveResult re : resultados){
    if(re.isSuccess()){
        System.debug('Registro insertado correctamente. Id: ' + re.getId());
    } else {
        for(Database.Error error : re.getErrors()){
            System.debug('Error al insertar registro: ' + error.getMessage());
        }
    }
}


// Estoy insertando 2 cuentas nuevas una para que se active el trigger y otra que se usa para distinguir como funciona mi trigger


