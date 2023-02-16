db = db.getSiblingDB("optica");
db.dropDatabase();
db = db.getSiblingDB("optica");

db.createCollection("ventes");
db.createCollection("proveidors");

db.ventes.insertMany([
  {
    _id: {
      $oid: "63e6747fde03d62fb3b94bce",
    },
    id_venta: 1,
    client: {
      id_client: 1,
      nom: "Cliente1",
      "codi postal": 8022,
      tel: 654987321,
      email: "asd@asd.com",
      "data registre": "2023-01-01",
      "recomentat per": null,
    },
    empleat: {
      id_empleat: 1,
      nom: "Empleat1",
      "data venta": "2023-01-01",
    },
    ullere: {
      $oid: "63ec93c308d52b9d2c21d1bc",
    },
  },
  {
    _id: {
      $oid: "63e6747fde03d62fb3b94bcf",
    },
    id_venta: 2,
    client: {
      id_client: 2,
      nom: "Cliente2",
      "codi postal": 8033,
      tel: 654922222,
      email: "ert@asd.com",
      "data registre": "2023-02-02",
      "recomentat per": null,
    },
    empleat: {
      id_empleat: 1,
      nom: "Empleat1",
      "data venta": "2023-02-02",
    },
    ullere: {
      $oid: "63ec93f508d52b9d2c21d1c0",
    },
  },
]);

db.ventes.insertMany([
  {
    _id: {
      $oid: "63e670c0de03d62fb3b94bca",
    },
    nom: "proveidor1",
    adreca: {
      carrer: "C/Barcelona",
      num: 5,
      pis: 2,
      porta: 1,
      ciudad: "Barcelona",
      "codi postal": 8022,
      pais: "ESP",
    },
    tel: 654987321,
    fax: null,
    nif: "456123l",
    marques: [
      {
        marca1: {
          id: 1,
          nom: "Marca1",
          ulleres: [
            {
              _id: {
                $oid: "63ec93c308d52b9d2c21d1bc",
              },
              "grad esquerra": 1,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "verd",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93dd08d52b9d2c21d1be",
              },
              "grad esquerra": 0,
              "grad dreta": 0,
              montura: "flotant",
              "color montura": "negre",
              "color vidre": "negre",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93f508d52b9d2c21d1c0",
              },
              "grad esquerra": 2,
              "grad dreta": 2,
              montura: "metalica",
              "color montura": "lila",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec940508d52b9d2c21d1c2",
              },
              "grad esquerra": 1.5,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "vermell",
              "color vidre": "blanc",
              preu: 9,
            },
          ],
        },
        marca2: {
          id: 1,
          nom: "Marca2",
          ulleres: [
            {
              _id: {
                $oid: "63ec93c308d52b9d2c21d1bc",
              },
              "grad esquerra": 1,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "verd",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93dd08d52b9d2c21d1be",
              },
              "grad esquerra": 0,
              "grad dreta": 0,
              montura: "flotant",
              "color montura": "negre",
              "color vidre": "negre",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93f508d52b9d2c21d1c0",
              },
              "grad esquerra": 2,
              "grad dreta": 2,
              montura: "metalica",
              "color montura": "lila",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec940508d52b9d2c21d1c2",
              },
              "grad esquerra": 1.5,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "vermell",
              "color vidre": "blanc",
              preu: 9,
            },
          ],
        },
      },
    ],
  },
  {
    _id: {
      $oid: "63e670c0de03d62fb3b94bcb",
    },
    nom: "proveidor2",
    adreca: {
      carrer: "C/Valencia",
      num: 2,
      pis: 2,
      porta: 1,
      ciudad: "Valencia",
      "codi postal": 8033,
      pais: "ESP",
    },
    tel: 987456123,
    fax: null,
    nif: "98545m",
    marques: [
      {
        marca1: {
          id: 1,
          nom: "Marca1",
          ulleres: [
            {
              _id: {
                $oid: "63ec93c308d52b9d2c21d1bc",
              },
              "grad esquerra": 1,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "verd",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93dd08d52b9d2c21d1be",
              },
              "grad esquerra": 0,
              "grad dreta": 0,
              montura: "flotant",
              "color montura": "negre",
              "color vidre": "negre",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93f508d52b9d2c21d1c0",
              },
              "grad esquerra": 2,
              "grad dreta": 2,
              montura: "metalica",
              "color montura": "lila",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec940508d52b9d2c21d1c2",
              },
              "grad esquerra": 1.5,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "vermell",
              "color vidre": "blanc",
              preu: 9,
            },
          ],
        },
        marca2: {
          id: 1,
          nom: "Marca2",
          ulleres: [
            {
              _id: {
                $oid: "63ec93c308d52b9d2c21d1bc",
              },
              "grad esquerra": 1,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "verd",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93dd08d52b9d2c21d1be",
              },
              "grad esquerra": 0,
              "grad dreta": 0,
              montura: "flotant",
              "color montura": "negre",
              "color vidre": "negre",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec93f508d52b9d2c21d1c0",
              },
              "grad esquerra": 2,
              "grad dreta": 2,
              montura: "metalica",
              "color montura": "lila",
              "color vidre": "blanc",
              preu: 9,
            },
            {
              _id: {
                $oid: "63ec940508d52b9d2c21d1c2",
              },
              "grad esquerra": 1.5,
              "grad dreta": 0.5,
              montura: "pasta",
              "color montura": "vermell",
              "color vidre": "blanc",
              preu: 9,
            },
          ],
        },
      },
    ],
  },
]);
