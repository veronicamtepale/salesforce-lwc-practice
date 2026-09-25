import { LightningElement } from 'lwc';

export default class HelloForEach extends LightningElement {
    contacts = [
        {id:1, Name:'Veronica', Title: 'VP of Enginnering'},
        {id:2, Name:'Carlos', Title: 'Manager'},
        {id:3, Name:'Ana', Title: 'Astronaut'},
        {id:4, Name:'Sofia', Title: 'VP of Marketing'},
        {id:5, Name:'Daniel', Title:'CTO'}
    ];
}