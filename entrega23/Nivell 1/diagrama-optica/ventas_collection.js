
// Dels clients/es vol emmagatzemar: El nom, l'adreça postal, el telèfon, el correu electrònic, la data de registre.
// Quan arriba un/a client/a nou, emmagatzemar el/la client/a que li ha recomanat l'establiment (sempre que algú li hagi recomanat).
// El nostre sistema haurà d’indicar qui ha sigut l’empleat/da que ha venut cada ullera. Defineix un període de temps de vendes.

[
  {
    "id_venta": 1,
    "client": {
      "id_client": 1,
      "nom": "Cliente1",
      "codi postal": 08022,
      "tel": 654987321, 
      "email": "asd@asd.com",
      "data registre": "2023-01-01",
      "recomentat per": null
             },
    "empleat":{ 
      "id_empleat": 1,
      "nom": "Empleat1",
      "data venta": "2023-01-01"
      }
      ,
      "ullere": null
  }
  ,
{
    "id_venta": 2,
    "client": {
      "id_client": 2,
      "nom": "Cliente2",
      "codi postal": 08033,
      "tel": 654922222, 
      "email": "ert@asd.com",
      "data registre": "2023-02-02",
      "recomentat per": null
             },
    "empleat":{ 
      "id_empleat": 1,
      "nom": "Empleat1",
      "data venta": "2023-02-02"
      },
      "ullere": null
}
]