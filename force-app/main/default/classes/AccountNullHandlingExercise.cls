public with sharing class AccountNullHandlingExercise {
    public static Map<Id, Account> nullHandlingExercise(List<Account> cuentas) {
        Set<Id> conjunto = new Set<Id>();
        Map<Id, Account> mapas = new Map<Id, Account>();

        for(Account ac : cuentas){
            if((ac.Industry == 'Technology') && (ac.NumberOfEmployees != null) && (ac.NumberOfEmployees >= 50)){
                conjunto.add(ac.Id);
                mapas.put(ac.Id, ac);
            }
        }
        
        return mapas;
    }
}