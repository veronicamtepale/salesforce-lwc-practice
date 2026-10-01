public with sharing class SalaryAnalyzer {
    public static Integer countHighSalaries (List<Decimal> salaries, Decimal minimumSalary) {
        Integer contador = 0;

        for(Decimal sal:salaries){
            if(sal>=minimumSalary){
                contador +=1;
            }
        }

        return(contador);
    }
}