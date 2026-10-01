public with sharing class EmailAnalyzer {
    public static Set<String> getUniqueEmails(List<String> emails) {
        Set<String> correos = new Set<String>();
        for(String mails:emails){
            correos.add(mails);
        }

        return(correos);
    }
}