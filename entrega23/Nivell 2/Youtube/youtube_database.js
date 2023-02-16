db = db.getSiblingDB("youtube");
db.dropDatabase();
db = db.getSiblingDB("youtube");

db.createCollection("usuaris");
db.createCollection("videos");

db.usuaris.insertMany([
  {
    _id: {
      $oid: "63ea6dc2e97a1264c23838c0",
    },
    nom: "David",
    password: "asd123",
    email: "asd@asd.com",
    naixement: "07/04/1985",
    sexe: "M",
    "codi postal": "08022",
    pais: "ESP",
    canal: {
      id_canal: "63ea74b9e97a1264c23868dc",
      titol: "Musica",
      descripcio: "...",
      "data creacio": "2023-01-01",
      subscrits: [
        {
          $oid: "63ea6e12e97a1264c23838c4",
        },
      ],
    },
    subscripcions: [],
    playlists: [],
  },

  {
    _id: {
      $oid: "63ea6deae97a1264c23838c2",
    },
    nom: "Marta",
    password: "asd123",
    email: "asd@asd.com",
    naixement: "12/05/1990",
    sexe: "M",
    "codi postal": "08033",
    pais: "ESP",
    canal: null,
    subscripcions: [],
    playlists: [],
  },

  {
    _id: {
      $oid: "63ea6e12e97a1264c23838c4",
    },
    nom: "Sonia",
    password: "asd123",
    email: "sonia@asd.com",
    naixement: "10/10/1995",
    sexe: "F",
    "codi postal": "08055",
    pais: "ESP",
    canal: {
      id_canal: "63ea74b9e97a1264c23989dc",
      titol: "Deporte",
      descripcio: "...",
      "data creacio": "2023-01-01",
      subscrits: [
        {
          $oid: "63ea6dc2e97a1264c23838c0",
        },
      ],
    },
    subscripcions: [],
    playlists: [],
  },
]);

db.videos.insertMany([
  {
    _id: {
      $oid: "63ea72bbe97a1264c23838d4",
    },
    usuari: {
      $oid: "63ea6e12e97a1264c23838c4",
    },
    titol: "Concierto en Zaragoza",
    descripcio: "...",
    size: 4,
    durada: 5.3,
    sexe: "F",
    thumbnail: null,
    "num reproduccions": 123,
    "num likes": 3,
    "num dislikes": 0,
    estat: "public",
    etiquetes: [
      {
        _id: {
          $oid: "63ea6e92e97a1264c23838c7",
        },
        nom: "Rock",
      },
      {
        _id: {
          $oid: "63ea6ea2e97a1264c23838c9",
        },
        nom: "Metal",
      },
    ],
    comentaris: [
      {
        id: 963,
        "comentat per": {
          $oid: "63ea6dc2e97a1264c23838c0",
        },
        comentari: "......",
        likes: null,
        dislikes: [
          {
            $oid: "63ea6deae97a1264c23838c2",
          },
        ],
      },
    ],
  },
  {
    _id: {
      $oid: "63ea735ae97a1264c23838d6",
    },
    usuari: {
      $oid: "63ea6deae97a1264c23838c2",
    },
    titol: "Paseo por Viena",
    descripcio: "...",
    size: 4,
    durada: 5.3,
    thumbnail: null,
    "num reproduccions": 23,
    "num likes": 23,
    "num dislikes": 4,
    estat: "public",
    etiquetes: [
      {
        _id: {
          $oid: "63ea6ec7e97a1264c23838cb",
        },
        nom: "Balada",
      },
      {
        _id: {
          $oid: "63ea6edce97a1264c23838cd",
        },
        nom: "Clasica",
      },
    ],
    comentaris: [
      {
        id: 783,
        "comentat per": {
          $oid: "63ea6dc2e97a1264c23838c0",
        },
        comentari: "......",
        likes: [
          {
            $oid: "63ea6deae97a1264c23838c2",
          },
        ],
        dislikes: [],
      },
    ],
  },
  {
    _id: {
      $oid: "63ea73bde97a1264c23838d8",
    },
    usuari: {
      $oid: "63ea6dc2e97a1264c23838c0",
    },
    titol: "Musica",
    descripcio: "...",
    size: 4,
    durada: 5.3,
    thumbnail: null,
    "num reproduccions": 199,
    "num likes": 999,
    "num dislikes": 44,
    estat: "public",
    etiquetes: [
      {
        _id: {
          $oid: "63ea6ec7e97a1264c23838cb",
        },
        nom: "Balada",
      },
      {
        _id: {
          $oid: "63ea6edce97a1264c23838cd",
        },
        nom: "Clasica",
      },
    ],
    comentaris: [
      {
        id: 555,
        "comentat per": {
          $oid: "63ea6dc2e97a1264c23838c0",
        },
        comentari: "......",
        likes: [
          {
            $oid: "63ea6deae97a1264c23838c2",
          },
        ],
        dislikes: [],
      },
    ],
  },
]);
