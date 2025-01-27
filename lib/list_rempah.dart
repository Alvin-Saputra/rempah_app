class Rempah {
  String name;
  String scientificName;
  String description;
  String uses;
  String imageAsset;
  String type;
  String url;
 
  Rempah({
    required this.name,
    required this.scientificName,
    required this.description,
    required this.uses,
    required this.imageAsset,
    required this.type,
    required this.url
  });
}

var ListRempah = [
  Rempah(
    name: 'Bunga Lawang',
    scientificName: 'Illicium verum',
    description:
        'Bunga lawang atau star anise adalah rempah yang berasal dari buah pohon yang tumbuh di Asia dan Australia. Bentuknya seperti bintang dengan kelopak yang mengandung biji.',
    uses: 'Biasa digunakan dalam masakan, sup, atau teh.',
    imageAsset: 'images/Bunga Lawang.png',
    type: 'Bunga',
    url: 'https://id.wikipedia.org/wiki/Bunga_lawang'
  ),

  Rempah(
    name: 'Cengkeh',
    scientificName: 'Syzygium aromaticum',
    description:
        'Cengkeh adalah rempah yang berasal dari bunga yang belum mekar dari pohon cengkeh. Cengkeh memiliki rasa pedas dan sedikit manis.',
    uses: 'Dapat digunakan dalam masakan, minuman, atau sebagai minyak esensial.',
    imageAsset: 'images/Cengkeh.png',
    type: 'Bunga',
    url: 'https://id.wikipedia.org/wiki/Cengkih'
  ),

   Rempah(
    name: 'Daun Jeruk Purut',
    scientificName: 'Citrus hystrix',
    description:
        'Daun jeruk purut memiliki aroma yang segar dan kuat. Daun ini banyak digunakan dalam masakan Asia Tenggara.',
    uses: 'Sering digunakan dalam masakan, sup, atau sambal.',
    imageAsset: 'images/Daun Jeruk Purut.png',
    type: 'Daun',
    url: 'https://id.wikipedia.org/wiki/Jeruk_purut'
  ),

  Rempah(
    name: 'Daun Pandan',
    scientificName: 'Pandanus amaryllifolius',
    description:
        'Daun pandan dikenal dengan aroma manisnya yang khas. Daun ini sering digunakan untuk memberikan rasa pada makanan atau minuman.',
    uses: 'Biasanya digunakan dalam masakan, kue, atau minuman.',
    imageAsset: 'images/Daun Pandan.png',
    type: 'Daun',
    url: 'https://id.wikipedia.org/wiki/Pandan'
  ),

  Rempah(
    name: 'Daun Salam',
    scientificName: 'Syzygium polyanthum',
    description:
        'Daun salam berasal dari pohon salam yang banyak digunakan dalam masakan tradisional Indonesia.',
    uses: 'Sering digunakan dalam masakan, sup, atau rebusan.',
    imageAsset: 'images/Daun Salam.png',
    type: 'Daun',
    url: 'https://id.wikipedia.org/wiki/Salam_(tumbuhan)'
  ),

  Rempah(
    name: 'Jahe',
    scientificName: 'Zingiber officinale',
    description:
        'Jahe adalah akar tanaman yang digunakan baik segar maupun kering dalam berbagai masakan dan minuman.',
    uses: 'Bisa digunakan dalam masakan, minuman, atau sebagai obat herbal.',
    imageAsset: 'images/Jahe.png',
    type: 'Akar',
    url: 'https://id.wikipedia.org/wiki/Jahe'
  ),

   Rempah(
    name: 'Jinten',
    scientificName: 'Cuminum cyminum',
    description:'Jinten adalah biji dari tanaman jinten yang banyak digunakan dalam masakan Asia dan Timur Tengah.',
    uses: 'Sering digunakan dalam bumbu masakan, kari, atau sup.',
    imageAsset: 'images/Jinten.png',
    type: 'Biji',
    url: 'https://id.wikipedia.org/wiki/Jintan_putih'
  ),

  Rempah(
    name: 'Kayu Manis',
    scientificName: 'Cinnamomum verum',
    description:'Kayu manis berasal dari kulit pohon manis yang dikeringkan dan digunakan sebagai rempah.',
    uses: 'Digunakan dalam masakan, minuman, atau kue.',
    imageAsset: 'images/Kayu Manis.png',
    type: 'Batang',
    url: 'https://id.wikipedia.org/wiki/Kayu_manis'
  ),

  Rempah(
    name: 'Kencur',
    scientificName: 'Kaempferia galanga',
    description:'Kencur adalah akar tanaman yang sering digunakan dalam masakan Indonesia dan obat tradisional.',
    uses: 'Biasa digunakan dalam jamu, sambal, atau masakan.',
    imageAsset: 'images/Kencur.png',
    type: 'Akar',
    url: 'https://id.wikipedia.org/wiki/Kencur'
  ),


  Rempah(
    name: 'Ketumbar',
    scientificName: 'Coriandrum sativum',
    description:'Ketumbar adalah biji dari tanaman Coriandrum sativum yang memiliki rasa hangat dan sedikit pedas.',
    uses: 'Sering digunakan dalam bumbu masakan, kari, atau sup.',
    imageAsset: 'images/Ketumbar.png',
    type: 'Biji',
    url: 'https://id.wikipedia.org/wiki/Ketumbar'
  ),

  Rempah(
    name: 'Kunyit',
    scientificName: 'Curcuma longa',
    description:'Kunyit adalah akar tanaman dengan warna kuning yang digunakan baik dalam masakan maupun pengobatan.',
    uses: 'Sering digunakan dalam masakan, minuman, atau sebagai obat herbal.',
    imageAsset: 'images/Kunyit.png',
    type: 'Akar',
    url: 'https://id.wikipedia.org/wiki/Kunyit'
  ),


  Rempah(
    name: 'Lada',
    scientificName: 'Piper nigrum',
    description:'Lada adalah rempah yang dihasilkan dari buah tanaman lada yang dikeringkan dan digunakan dalam berbagai masakan.',
    uses: 'Digunakan dalam bumbu masakan, saus, atau sebagai pelengkap hidangan.',
    imageAsset: 'images/Lada.png',
    type: 'Biji',
    url: 'https://id.wikipedia.org/wiki/Lada'
  ),

   Rempah(
    name: 'Lengkuas',
    scientificName: 'Alpinia galanga',
    description:'Lengkuas adalah akar tanaman yang banyak digunakan dalam masakan Asia Tenggara.',
    uses: 'Sering digunakan dalam bumbu masakan, sup, atau sambal.',
    imageAsset: 'images/Lengkuas.png',
    type: 'Akar',
    url: 'https://id.wikipedia.org/wiki/Lengkuas'
  ),

  Rempah(
    name: 'Pala',
    scientificName: 'Myristica fragrans',
    description:'Pala adalah biji dari buah tanaman pala yang digunakan dalam berbagai jenis masakan.',
    uses: 'Digunakan dalam masakan, minuman, atau kue.',
    imageAsset: 'images/Pala.png',
    type: 'Biji',
    url: 'https://id.wikipedia.org/wiki/Pala_Banda'
  ),


  Rempah(
    name: 'Serai',
    scientificName: 'Cymbopogon citratus',
    description:'Serai adalah batang tanaman yang memiliki aroma segar dan banyak digunakan dalam masakan Asia.',
    uses: 'Sering digunakan dalam masakan, teh, atau minyak esensial.',
    imageAsset: 'images/Serai.png',
    type: 'Batang',
    url: 'https://id.wikipedia.org/wiki/Serai_dapur'
  ),

];