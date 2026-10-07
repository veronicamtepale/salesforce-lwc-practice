trigger AccountContactAfterInsertTrigger on Account (after insert) {
    List<Contact> contactosNuevos = new List<Contact>();
    for(Account ac : Trigger.new){
        if(ac.Industry == 'Technology'){
            Contact contacto = new Contact(LastName='Primary Contact');
            contacto.AccountId = ac.Id;
            contactosNuevos.add(contacto);
        }
    }
    if(!contactosNuevos.isEmpty()){
        insert contactosNuevos;
    }
}