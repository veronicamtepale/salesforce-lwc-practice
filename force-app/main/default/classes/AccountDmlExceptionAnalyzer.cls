public with sharing class AccountDmlExceptionAnalyzer {
    public static void dmlExceptionAnalyzer(List<Account> cuentas) {
        try{
            insert cuentas;
        } catch(DmlException e){
            for(Integer i = 0; i < e.getNumDml(); i++){
                System.debug('Error al insertar cuentas: ' + e.getDmlMessage(i));
                System.debug('Ocurrieron esta cantidad de error: ' + e.getNumDml());
                System.debug('Indice del registro que fallo: ' + e.getDmlIndex(i));
            }
            
        }
    }
}