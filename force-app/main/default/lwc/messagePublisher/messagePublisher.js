import { LightningElement, wire } from 'lwc';
import { MessageContext, publish } from 'lightning/messageService';
import MESSAGE_CHANNEL from '@salesforce/messageChannel/MessageChannel__c';

export default class MessagePublisher extends LightningElement {
    @wire(MessageContext)
    MessageContext;

    handleMessageChange(event){
        this.message = event.target.value;
    }

    handlePublish() {
    alert('EL BOTÓN SÍ FUNCIONA');

    const payload = {
        message: this.message
    };

    console.log('MENSAJE A PUBLICAR:', this.message);

    publish(this.messageContext, MESSAGE_CHANNEL, payload);
}
}