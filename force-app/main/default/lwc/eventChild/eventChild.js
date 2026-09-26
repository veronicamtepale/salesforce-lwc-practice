import { LightningElement } from 'lwc';

export default class EventChild extends LightningElement {
    message = ' ';

    handleMessageChange(event){
        this.message = event.target.value;
        console.log(this.message);
    }

    handleSend(){
        const messageEvent = new CustomEvent('message', {detail:this.message});
            this.dispatchEvent(messageEvent);
        }
    }
