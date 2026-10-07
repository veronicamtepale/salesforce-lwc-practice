public with sharing class AccountAdvancedFilterExercise {
    public static Map<Id, Account> advancedFilterExercise(List<Account> cuentasRecibidas) {
        Map<Id, Account> mapeoCuentas = new Map<Id, Account>();
        Set<Id> conjuntoCuentas = new Set<Id>();
        for(Account cue : cuentasRecibidas){
            if((cue.Industry == 'Technology' || cue.Industry == 'Banking') && (cue.NumberOfEmployees >= 50)){
                conjuntoCuentas.add(cue.Id);
                mapeoCuentas.put(cue.Id, cue);
            } 
        }
        return mapeoCuentas;
    }
}