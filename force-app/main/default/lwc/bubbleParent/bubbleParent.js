import { LightningElement } from 'lwc';

export default class BubbleParent extends LightningElement {

    name = '';

    handleNameChange(event) {
        this.name = event.detail;
    }
}