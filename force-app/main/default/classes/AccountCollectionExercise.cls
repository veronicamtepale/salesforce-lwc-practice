public with sharing class AccountCollectionExercise {
    public static Map<Id, Account> collectionExercise(List<Account> cuentas) {
        Map<Id, Account> mapa = new Map<Id, Account>();
        Set<Id> conjunto = new Set<Id>();
        for(Account cue : cuentas){
            if(cue.Industry == 'Banking'){
                conjunto.add(cue.Id);
                mapa.put(cue.Id, cue);
            }
        }
        return mapa;
    }
}