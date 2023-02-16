db = db.getSiblingDB("spotify");
db.dropDatabase();
db = db.getSiblingDB("spotify");

db.createCollection("usuaris");
db.createCollection("canciones");

db.usuaris.insertMany([
  {
    _id: {
      $oid: "63ea8fd8e97a1264c2383914",
    },
    nom: "Paco",
    email: "asd@asd.com",
    pass: "asd456",
    neixement: "1990-12-12",
    sexe: "M",
    pais: "ESP",
    "codi postal": 8022,
    "tipus usuari": "premium",
    subscripcions: [
      {
        "data inici": "2023-01-01",
        "data renovacio": "2023-05-05",
      },
    ],
    pagaments: [
      {
        id: 1,
        metode: "credit card",
        preu: 25,
      },
    ],
    playlists: null,
    siguiendo: [
      {
        $oid: "63ea8b7ce97a1264c23838f1",
      },
    ],
    favoritos: null,
  },
]);

db.canciones.insertMany([
  {
    _id: {
      $oid: "63ea8be5e97a1264c23838f4",
    },
    titol: "Cancion de Sabina",
    durada: 3,
    "num reproduccions": 200,
    album: {
      _id: {
        $oid: "63ea8d71e97a1264c238390f",
      },
      titol: "Album de Sabina",
      any: 1990,
      img: null,
    },
    artista: {
      _id: {
        $oid: "63ea8b50e97a1264c23838eb",
      },
      nom: "Sabina",
      img: null,
    },
  },
  {
    _id: {
      $oid: "63ea8bf5e97a1264c23838f6",
    },
    titol: "Cancion dos de Sabina",
    durada: 3,
    "num reproduccions": 300,
    album: {
      _id: {
        $oid: "63ea8d71e97a1264c238390f",
      },
      titol: "Album de Sabina",
      any: 1990,
      img: null,
    },
    artista: {
      _id: {
        $oid: "63ea8b50e97a1264c23838eb",
      },
      nom: "Sabina",
      img: null,
    },
  },
  {
    _id: {
      $oid: "63ea8c01e97a1264c23838f8",
    },
    titol: "Cancion de Serrat",
    durada: 3,
    "num reproduccions": 200,
    album: {
      _id: {
        $oid: "63ea8d39e97a1264c2383909",
      },
      titol: "Album Serrat",
      any: 1990,
      img: null,
    },
    artista: {
      _id: {
        $oid: "63ea8b5ce97a1264c23838ed",
      },
      nom: "Serrat",
      img: null,
    },
  },
  {
    _id: {
      $oid: "63ea8c0ee97a1264c23838fa",
    },
    titol: "Cancion dos de Serrat",
    durada: 3,
    "num reproduccions": 200,
  },
  {
    _id: {
      $oid: "63ea8c17e97a1264c23838fc",
    },
    titol: "Cancion de Metallica",
    durada: 3,
    "num reproduccions": 200,
    album: {
      _id: {
        $oid: "63ea8ce6e97a1264c2383903",
      },
      titol: "Enter the Sandman",
      any: 1990,
      img: null,
    },
    artista: {
      _id: {
        $oid: "63ea8b7ce97a1264c23838f1",
      },
      nom: "Metallica",
      img: null,
    },
  },
  {
    _id: {
      $oid: "63ea8c23e97a1264c23838fe",
    },
    titol: "Cancion dos de Metallica",
    durada: 3,
    "num reproduccions": 200,
    album: {
      _id: {
        $oid: "63ea8ce6e97a1264c2383903",
      },
      titol: "Enter the Sandman",
      any: 1990,
      img: null,
    },
    artista: {
      _id: {
        $oid: "63ea8b7ce97a1264c23838f1",
      },
      nom: "Metallica",
      img: null,
    },
  },
]);
