import { LightningElement } from 'lwc';

export default class EmployeeInfo extends LightningElement {
    name = '';
    age = '';
    salary = '';

    showEmployeeForm = true;

    handleNameChange(event){
        this.name = event.target.value; 
    }

    handleAgeChange(event){
        this.age = event.target.value;
    }

    handleSalaryChange(event){
        this.salary = event.target.value;
    }

    handleSave(){
        this.showEmployeeForm = false;
    }
}