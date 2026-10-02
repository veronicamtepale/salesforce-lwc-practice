public with sharing class AccountAnalyzer {

    public static List<Account> getLargeAccounts() {
        List<Account> accounts = [SELECT Id, Name, Industry, NumberOfEmployees FROM Account ORDER BY NumberOfEmployees DESC LIMIT 10];
        return accounts;
    }

    public static Integer countAccounts(){
        Integer total = [SELECT COUNT() FROM Account];
        return total;
    }

    public static List<AggregateResult> countAccountsByIndustry(){
        List<AggregateResult> resultadosAgrupados = [SELECT Industry, COUNT(Id) total FROM Account GROUP BY Industry];
        return resultadosAgrupados;
    }

    public static List<Account> getAccountsByIndustry(String industry){
        List<Account> accounts = [SELECT Id, Name, Industry, NumberOfEmployees FROM Account WHERE Industry = :industry ORDER BY Name ASC LIMIT 20];
        return accounts;
    }

    public static void createSampleAccounts(){
        List<Account> nuevasCuentas = new List<Account>();
        nuevasCuentas.add(new Account(Name='Rivers', Industry='Technology'));
        nuevasCuentas.add(new Account(Name='Nezumi', Industry='Banking'));
        nuevasCuentas.add(new Account(Name='Caprimint', Industry='Retail'));
        
        insert nuevasCuentas;
    }

    public static void updateAccountIndustry(Id accountId, String newIndustry){
        Account account = [SELECT Id, Name, Industry FROM Account WHERE Id = :accountId LIMIT 1];
        account.Industry = newIndustry;

        update account;
    }

    // DELETE EXAMPLE
    public static void deleteAccount(Id accountId){
        Account accountDelete = [SELECT Id, Name, Industry FROM Account WHERE Id =:accountId];
        //     Este nombre tiene
        //     que coincidir con
        //     ' delete ... ; '
        //      ↓ ↓ ↓ ↓ ↓ ↓ 
        delete accountDelete;
    } 

    // UPSERT (EXISTE -> UPDATE | NO EXISTE -> INSERT)
    public static void upsertAccount(Account cuenta){ 
        upsert cuenta;
    } 
   
    // UNDELETE EXAMPLE
    public static void undeleteAccount(Account acUndelete){
        undelete acUndelete;
    } 

    public static void massiveUpdate(List<Account> massUpdate){

        List<Account> cuentasActualizadas = new List<Account>();

        for(Account ac : massUpdate){
            if(ac.Industry == 'Technology'){
                ac.Industry = 'Software';
                cuentasActualizadas.add(ac);
            }
        }
        if(!cuentasActualizadas.isEmpty()){
            update cuentasActualizadas;
        }

    }
}

