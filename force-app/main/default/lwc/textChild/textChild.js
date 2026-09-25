import { api, LightningElement } from 'lwc';

export default class TextChild extends LightningElement {
    message = ' ';
    @api
    convertToUpperCase(text){ 
            this.message = text.toUpperCase();
    }
}