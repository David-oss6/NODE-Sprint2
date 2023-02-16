db = db.getSiblingDB("pizzeria");
db.dropDatabase();
db = db.getSiblingDB("pizzeria");

db.createCollection("clients");
db.createCollection("comandes");

db.clients.insertMany([
  {
    _id: {
      $oid: "63e9fac8e97a1264c238387a",
    },
    id: 1,
    nom: "David",
    cognom: "Apellido1",
    adreca: "c/Barcelona",
    "codi postal": "08022",
    localitat: "barcelona",
    provincia: "Barcelona",
    tel: 654987321,
  },
  {
    _id: {
      $oid: "63ea2809e97a1264c23838b2",
    },
    id: 2,
    nom: "Massimo",
    cognom: "Apellido2",
    adreca: "c/Valencia",
    "codi postal": "08033",
    localitat: "barcelona",
    provincia: "Barcelona",
    tel: 987654321,
  },
]);

db.comandes.insertMany([
  {
    _id: {
      $oid: "63ea1ec712c5c09807609fa6",
    },
    client: {
      $oid: "63e9fac8e97a1264c238387a",
    },
    "comanda id": 1,
    "data/hora": "******",
    "tipus comanda": "per emportar",
    productes: [
      {
        _id: {
          $oid: "63e9f534e97a1264c2383874",
        },
        nom: "fanta",
        descripcio: "...",
        img: null,
        preu: 2,
      },
      {
        _id: {
          $oid: "63e9f50ae97a1264c238386d",
        },
        nom: "margarita",
        descripcio: "...",
        img: null,
        preu: 10,
        categoria: {
          id: 111,
          nom: "vegetariana",
        },
      },
    ],
    botiga: "botiga1",
    empleat: {
      _id: {
        $oid: "63ea2407e97a1264c23838a6",
      },
      nom: "Marco",
      cognom: "Brulco",
      nif: "789456L",
      tel: 643215645,
      funcio: "reaprtidor",
    },
    "preu total": 12,
  },
  {
    _id: {
      $oid: "63ea291312c5c09807609fa9",
    },
    client: {
      $oid: "63ea2809e97a1264c23838b2",
    },
    "data/hora": "******",
    "tipus comanda": "a botiga",
    productes: [
      {
        _id: {
          $oid: "63e9f50ae97a1264c238386e",
        },
        nom: "BBQ",
        descripcio: "...",
        img: null,
        preu: 10.6,
        categoria: {
          id: 222,
          nom: "classic",
        },
      },
      {
        _id: {
          $oid: "63e9f534e97a1264c2383873",
        },
        nom: "fanta",
        descripcio: "...",
        img: null,
        preu: 2,
      },
    ],
    botiga: "botiga1",
    empleat: {
      _id: {
        $oid: "63ea2436e97a1264c23838a9",
      },
      nom: "Marta",
      cognom: "Oscura",
      nif: "98745M",
      tel: 643215645,
      funcio: "cuiner",
    },
    "preu total": 12,
  },
]);
