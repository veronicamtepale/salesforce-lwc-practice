import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    showGreeting = true;

    handleNameChange(event){
        this.showGreeting = event.target.checked;
    }
}