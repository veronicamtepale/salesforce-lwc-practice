Map<String, Decimal> empleados = new Map<String, Decimal>{'Ana'=>18000, 'Veronica'=>25000, 'Carlos'=>22000};
Decimal resultados = EmployeeSalaryMap.getEmployeeSalary(empleados, 'Veronica');
System.debug('El resultado es: ' + resultados);