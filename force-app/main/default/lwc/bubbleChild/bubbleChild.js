import { LightningElement } from 'lwc';

export default class BubbleChild extends LightningElement {
    handleNameChange(event){
       const messageUser = event.target.value;
       const msUser = new CustomEvent("namechange", {detail:messageUser, bubbles:true});
       this.dispatchEvent(msUser);
    }
}