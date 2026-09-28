import { LightningElement, wire } from 'lwc';
import { MessageContext, subscribe, APPLICATION_SCOPE } from 'lightning/messageService';

import MESSAGE_CHANNEL from '@salesforce/messageChannel/MessageChannel__c';

export default class MessageSubscriber extends LightningElement {

    @wire(MessageContext)
    messageContext;

    receivedMessage = '';
    subscription = null;

    connectedCallback() {
        this.subscription = subscribe(
            this.messageContext,
            MESSAGE_CHANNEL,
            (message) => {
                alert('EL SUBSCRIBER RECIBIÓ EL MENSAJE');
                this.receivedMessage = message.message;
            },
            { scope: APPLICATION_SCOPE }
        );
    }
}