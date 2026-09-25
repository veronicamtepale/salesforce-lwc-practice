import { LightningElement } from 'lwc';

export default class SimpleSharpeCalculator extends LightningElement {
    currentOutput = ' ';
    width;
    height;
    side;
    diagonal1;
    diagonal2;

    sideChangeHandler(event){
        this.side = event.target.value;
    }

    widthChangeHandler(event){
        this.width = event.target.value;
    }
    
    heightChangeHandler(event){
        this.height = event.target.value;
    }

    diagonal1ChangeHandler(event){
        this.diagonal1 = event.target.value;
    }

    diagonal2ChangeHandler(event){
        this.diagonal2 = event.target.value;
    }

    calculateSqAreaHandler(){
        const s = parseFloat(this.side);
        this.currentOutput = 'El Area del cuadrado es: ' + (s * s);
    }

    calculateRecAreaHandler(){
        const w = parseFloat(this.width);
        const h = parseFloat(this.height);
        this.currentOutput = 'El area del rectangulo es: ' + (w * h);
    }

    calculateRhAreaHandler(){
        const d1 = parseFloat(this.diagonal1);
        const d2 = parseFloat(this.diagonal2);
        this.currentOutput = 'El area del rombo es: ' + (d1 * d2) / 2;
    }
}