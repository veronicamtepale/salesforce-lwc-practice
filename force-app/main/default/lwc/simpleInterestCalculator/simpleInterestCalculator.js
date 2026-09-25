import { LightningElement } from 'lwc';

export default class SimpleInterestCalculator extends LightningElement {
    currentOutput;
    principal;
    rateOfInterest;
    noOfYears;

    principalChangeHandler(event){
        this.principal = parseInt(event.target.value);
    }
    timeChangeHandler(event){
        this.noOfYears = parseInt(event.target.value);
    }
    rateChangueHandler(event){
        this.rateOfInterest = parseInt(event.target.value);
    }

    calculateSIHandler(){
        this.currentOutput='Simple interest is: ' + (this.principal * this.rateOfInterest * this.noOfYears)/100;
    }
}