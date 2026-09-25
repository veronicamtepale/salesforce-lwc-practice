import { LightningElement } from 'lwc';

export default class ProductList extends LightningElement {
    products = [
        {id:1, productName:'Laptop', price:15000},
        {id:2, productName:'Mouse', price:500},
        {id:3, productName:'Teclado', price:1200}
    ];
}