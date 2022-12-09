class InfoDataJenis {
  InfoDataJenis({
    this.imagePath = '',
    this.link = '',
    this.Color = '',
    this.description,
  });

  String imagePath;
  String link;
  String Color;
  List<String>? description;

  static List<InfoDataJenis> tabInfoJenis = <InfoDataJenis>[
    InfoDataJenis(
      imagePath: 'assets/gambar_info.png',
      link: 'Masa Tanam Padi:',
      description: <String>['4 Bulan'],
      Color: '#FFFFFF',
    ),
    InfoDataJenis(
      imagePath: 'assets/backgroun_profil.png',
      link: 'Resiko Penyakit',
      description: <String>[
        'Resiko terkena hama wereng pada masa tanam bulan ke dua'
      ],
      Color: '#FFFFFF',
    ),
    // InfoListData(
    //   imagePath: 'assets/gambar_petani_1.jpg',
    //   link: 'Jenis Penyakit ?',
    //   // description: <String>[
    //   //   'Ranggi juga mengatakan berdasarkan dari data BPS,',
    //   //   'rata-rata pendapatan para petani dan pelayan hanya mencapai',
    //   //   'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
    //   //   'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
    //   // ],
    //   Color: '#FFFFFF',
    // ),
    // InfoListData(
    //   imagePath: 'assets/gambar_petani_2.jpg',
    //   link: 'Hama?',
    //   description: <String>[
    //     'Ranggi juga mengatakan berdasarkan dari data BPS,',
    //     'rata-rata pendapatan para petani dan pelayan hanya mencapai',
    //     'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
    //     'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
    //   ],
    //   Color: '#FFFFFF',
    // ),
    // InfoListData(
    //   imagePath: 'assets/gambar_petani_3.jpeg',
    //   link: 'Pupuk Yang Cocok?',
    //   description: <String>[
    //     'Ranggi juga mengatakan berdasarkan dari data BPS,',
    //     'rata-rata pendapatan para petani dan pelayan hanya mencapai',
    //     'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
    //     'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
    //   ],
    //   Color: '#FFFFFF',
    // ),
    // InfoListData(
    //   imagePath: 'assets/gambar_petani_4.jpeg',
    //   link: 'Perawatan ?',
    //   description: <String>[
    //     'Ranggi juga mengatakan berdasarkan dari data BPS,',
    //     'rata-rata pendapatan para petani dan pelayan hanya mencapai',
    //     'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
    //     'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
    //   ],
    //   Color: '#FFFFFF',
    // ),
    // InfoListData(
    //   imagePath: 'assets/gambar_petani_5.jpg',
    //   link: 'Penangkal Hama',
    //   description: <String>[
    //     'Ranggi juga mengatakan berdasarkan dari data BPS,',
    //     'rata-rata pendapatan para petani dan pelayan hanya mencapai',
    //     'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
    //     'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
    //   ],
    //   Color: '#FFFFFF',
    // ),
  ];
}
