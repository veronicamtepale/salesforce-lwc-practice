public with sharing class EmployeeCalculator {
    public static Decimal calculateSalary(Decimal salario, Integer years){
        Decimal bono = 0;
        if(years < 2){
            bono = 0;
        }
        else if(years >= 2 && years <=5){
            bono = salario * 0.10;
        }
        
        else if(years > 5){
            bono = salario * 0.20;
        }
        
        return(bono+salario);
        
    }
}