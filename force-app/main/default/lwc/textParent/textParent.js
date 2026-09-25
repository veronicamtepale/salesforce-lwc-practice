import { LightningElement } from 'lwc';

export default class TextParent extends LightningElement {
    handleMessageChange(event){
        const child = this.template.querySelector('c-text-child');
        child.convertToUpperCase(event.target.value);
    }
}