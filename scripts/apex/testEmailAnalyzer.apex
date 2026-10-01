List<String> correos = new List<String>{'ana@email.com', 'vero@email.com', 'ana@email.com', 'carlos@email.com', 'vero@email.com'};
Set<String> resultados = EmailAnalyzer.getUniqueEmails(correos);
System.debug('El resultado de este set es: ' + resultados);
