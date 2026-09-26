import { LightningElement } from 'lwc';

export default class EventParent extends LightningElement {
    message=' ';

    handleMessage(event){
        this.message = event.detail;
    }
}