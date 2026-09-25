import { LightningElement, api } from 'lwc';

export default class PublicPropertyChild extends LightningElement {
    @api name; //propiedad publica (puede recibir informacion desde el padre)
}