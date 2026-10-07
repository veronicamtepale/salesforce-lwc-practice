public with sharing class AccountIndustryFilterExercise {
    public static Map<Id, Account> industryFilterExercise(List<Account> account) {
        Set<Id> conjunto = new Set<Id>();
        Map<Id, Account> mapeo = new Map<Id, Account>();
        for(Account ac : account){
            if(ac.Industry == 'Banking' || ac.Industry == 'Technology'){
                conjunto.add(ac.Id);
                mapeo.put(ac.Id, ac);
            }
        }
        return mapeo;
    }
}