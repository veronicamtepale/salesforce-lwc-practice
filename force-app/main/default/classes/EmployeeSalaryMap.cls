public with sharing class EmployeeSalaryMap {
    public static Decimal getEmployeeSalary(Map<String, Decimal> empleados, String nomEmpleado) {
        if(empleados.containsKey(nomEmpleado)){
            return(empleados.get(nomEmpleado));
        }
        else{
            return(0);
        }
    }
}