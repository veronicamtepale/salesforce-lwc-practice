public with sharing class AccountInsertService {
    public static void insertService(List<Account> cuentas) {
        try{
            insert cuentas;
        } catch(DmlException e){
            System.debug('Error al insertar cuentas: ' + e.getMessage());
        } finally{
            System.debug('Proceso de inserción finalizado.');
        }
    }
}