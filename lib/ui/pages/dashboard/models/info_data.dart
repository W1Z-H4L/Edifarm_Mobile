class InfoListData {
  InfoListData(
      {this.imagePath = '',
      this.link = '',
      this.Color = '',
      this.description,
      this.inpo = ''});

  String imagePath;
  String link;
  String Color;
  String inpo;
  List<String>? description;

  static List<InfoListData> tabInfoList = <InfoListData>[
    InfoListData(
        imagePath: 'assets/gambar_padi1.jpg',
        link: 'Padi Ciherang?',
        description: <String>[
          'Padi Ciherang merupakan varietas padi unggul turunan dari IR64.'
              'Selain memiliki potensi hasil yang tinggi, bentuk gabah padi'
              'Ciherang adalah ramping panjang berwarna kuning bersih serta'
              'tekstur nasi yang pulen, menjadikan varietas ini masih....'
        ],
        Color: '#FFFFFF',
        inpo:
            'http://www.litbang.pertanian.go.id/info-teknologi/3175/#:~:text=Padi%20Ciherang%20merupakan%20varietas%20padi,diminati%20oleh%20petani%20dan%20konsumen.'),
    InfoListData(
        imagePath: 'assets/gambar_padi2.jpg',
        link: 'varietas padi ciherang ?',
        description: <String>[
          'Di Indonesia siapa petani padi yang tak kenal dengan varietas'
              'padi ciherang, Jawabannya pasti semua tahu tentang varietas'
              'padi ciherang, Karena memang hampir semua petani mengetahui'
              'varietas padi ini, bahkan mungkin juga pernah....'
        ],
        Color: '#FFFFFF',
        inpo: 'https://www.kliktani.com/2018/11/padi-ciherang.html'),
    InfoListData(
        imagePath: 'assets/gambar_gambar3.jpg',
        link: 'umur padi?',
        description: <String>[
          'Pemerintah telah mencanangkan gerakan peningkatan produksi'
              'beras nasional (P2BN), Program ini menargetkan peningkatan Â'
              'produksi padi sebesar 2 juta ton sejak tahun 2007 dan'
              'diharapkan rata-rata meningkat sebesar 5%....'
        ],
        Color: '#FFFFFF',
        inpo:
            'hhttp://sumbar.litbang.pertanian.go.id/index.php/publikasi/karya-ilmiah-peneliti-dan-penyuluh/695-pengaruh-umur-dan-jumlah-bibit-pada-padi-sawah-varietas-umur-genjah-vug-dan-sangat-genjah-vusg-di-sitiung'),
    InfoListData(
        imagePath: 'assets/gambar_padi4.jpg',
        link: 'Hama?',
        description: <String>[
          'Penelitian ini bertujuan untuk membandingkan populasi hama'
              'dan musuh alami pada pertanaman padi Varietas Ciherang yang'
              'dikelola secara PHT versus non-PHT. Penelitian ini dilaksanakan'
              'di Desa Sinar Pasemah, Kecamatan Sidomulyo....'
        ],
        Color: '#FFFFFF',
        inpo:
            'https://www.neliti.com/id/publications/233060/populasi-hama-dan-musuh-alami-pada-pertanaman-padi-varietas-ciherang-yang-dikelo'),
    InfoListData(
        imagePath: 'assets/gambar_padi5.jpg',
        link: 'cuaca dan iklim ?',
        description: <String>[
          'Perubahan iklim dapat mengubah hubungan hama - tanaman'
              'menghasilkan dampak yang memperparah kejadian dan serangan'
              'yang terjadi dalam kurun waktu tertentu. Variasi latar'
              'belakang tetua untuk ketahanan terhadap hama....'
        ],
        Color: '#FFFFFF',
        inpo:
            'http://bbpadi.litbang.pertanian.go.id/index.php/info-berita/info-teknologi/varietas-padi-inpari-47-wbc-unggul-4-jenis-tipe-wereng'),
    InfoListData(
        imagePath: 'assets/gambar_padi6.jpg',
        link: 'resiko tanam ?',
        description: <String>[
          'Salah satu tantangan dalam pembangunan pertanian adalah'
              'adanya kecenderungan menurunnya produktivitas lahan.'
              'Disisi lain sumberdaya  alam terus menurun sehingga perlu'
              'diupayakan  untuk tetap menjaga kelestariannya....'
        ],
        Color: '#FFFFFF',
        inpo: 'https://dinpertanpangan.demakkab.go.id/?p=2747'),
    InfoListData(
        imagePath: 'assets/gambar_padi7.jpg',
        link: 'Penangkal Hama',
        description: <String>[
          'Dalam budidaya tanaman padi, maka tidak akan terlepas dari'
              'ancaman hama dan penyakit yang sering menyerang tanaman tersebut.'
              'Serangan hama dan penyakit apabila dalam pengendaliannya'
              'kurang tepat, maka dapat menurunkan produktivitas....'
        ],
        Color: '#FFFFFF',
        inpo:
            'http://disperta.mojokertokab.go.id/artikel/hama-dan-penyakit-tanaman-padi-1594789787'),
    InfoListData(
        imagePath: 'assets/gambar_padi8.png',
        link: 'jenis pestisida',
        description: <String>[
          'Pestisida adalah bahan atau zat kimia yang digunakan'
              'untuk membunuh hama, penyakit  tumbuhan baik  yang berupa'
              'tumbuhan , serangga maupun hewan lain yang nampak atau'
              'tidak nampak mata yang ada di sekitar kita....'
        ],
        Color: '#FFFFFF',
        inpo:
            'http://cybex.pertanian.go.id/mobile/artikel/92243/Mengenal-Jenis-Jenis-Pestisida-Untuk-Usaha-Pertanian/'),
    InfoListData(
        imagePath: 'assets/gambar_padi9.jpg',
        link: 'kondisi cuaca ',
        description: <String>[
          'Kondisi cuaca yang sangat ekstrim di musim penghujan sangat'
              'berdampak kurang baik bagi petani padi sawah. Tingginya'
              'curah hujan di bulan Mei dan Juni mengakibatkan penurunana'
              'produksi padi sawah. Para petani mengharapkan pada....'
        ],
        Color: '#FFFFFF',
        inpo:
            'http://cybex.pertanian.go.id/artikel/72683/penurunan-produksi-padi-sawah-akibat-curah-hujan-yang-tinggi-di-kecamatan-sawa/'),
    InfoListData(
        imagePath: 'assets/gambar_padi10.jpg',
        link: 'penggunaan pupuk',
        description: <String>[
          'Sebagai sumber hara, pupuk merupakan sarana produksi yang'
              'memegang peranan penting dalam meningkatkan produktivitas'
              'tanaman pangan. Masalahnya adalah penggunaan pupuk kimia'
              'secara terus menerus pada dosis tinggi....'
        ],
        Color: '#FFFFFF',
        inpo:
            'https://cangkingan.desa.id/artikel/2021/6/27/teknik-pemupukan-tanaman-padi-yang-tidak-semua-orang-tahu'),
    InfoListData(
        imagePath: 'assets/gambar_padi11.jpg',
        link: 'jenis tanah',
        description: <String>[
          'Tanah berperan penting dalam menunjang proses produksi pertanian.'
              'Jenis tanah di satu daerah berbeda dengan daerah lainnya'
              'tergantung dari komponen yang ada di dalamnya. Umumnya petani'
              'mengenal jenis tanah seperti tanah merah, tanah lempung....'
        ],
        Color: '#FFFFFF',
        inpo:
            'https://www.hextarfertilizerindonesia.com/mengenal-jenis-dan-karakter-tanah-untuk-pertanian/'),
    InfoListData(
        imagePath: 'assets/gambar_padi12.jpg',
        link: 'pengairan padi',
        description: <String>[
          'Irigasi atau pengairan adalah suatu usaha mendatangkan air dengan'
              'membuat bangunan dan saluran-saluran untuk ke sawah-sawah atau'
              'ladang-ladang dengan cara teratur dan membuang air yang tidak'
              'diperlukan lagi, setelah air itu dipergunakan....'
        ],
        Color: '#FFFFFF',
        inpo:
            'http://cybex.pertanian.go.id/mobile/artikel/59428/Sistem-Pengairan--Pada-Tanaman-Padi/'),
  ];
}
