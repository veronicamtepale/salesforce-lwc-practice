List<Decimal> salarios = new List<Decimal>{15000, 22000, 18000, 30000, 25000};
Integer resultados = SalaryAnalyzer.countHighSalaries(salarios, 20000);
System.debug('El resultado es: ' + resultados);