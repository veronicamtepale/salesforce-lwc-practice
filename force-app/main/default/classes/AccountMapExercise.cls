public with sharing class AccountMapExercise {
    public static Map<Id, Account> mapExercise(List<Account> mapExe) {
        Map<Id, Account> mapeo = new Map<Id, Account>();
        for(Account ac : mapExe){
            mapeo.put(ac.Id, ac);
        }
        return mapeo;
    }
}
