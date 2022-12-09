class InfoListData {
  InfoListData({
    this.imagePath = '',
    this.link = '',
    this.Color = '',
    this.description,
  });

  String imagePath;
  String link;
  String Color;
  List<String>? description;

  static List<InfoListData> tabInfoList = <InfoListData>[
    InfoListData(
      imagePath: 'assets/gambar_info.png',
      link: 'Padi Ciherang?',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
    InfoListData(
      imagePath: 'assets/backgroun_profil.png',
      link: 'Lama Tanam ?',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
    InfoListData(
      imagePath: 'assets/gambar_petani_1.jpg',
      link: 'Jenis Penyakit ?',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
    InfoListData(
      imagePath: 'assets/gambar_petani_2.jpg',
      link: 'Hama?',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
    InfoListData(
      imagePath: 'assets/gambar_petani_3.jpeg',
      link: 'Pupuk Yang Cocok?',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
    InfoListData(
      imagePath: 'assets/gambar_petani_4.jpeg',
      link: 'Perawatan ?',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
    InfoListData(
      imagePath: 'assets/gambar_petani_5.jpg',
      link: 'Penangkal Hama',
      description: <String>[
        'Ranggi juga mengatakan berdasarkan dari data BPS,',
        'rata-rata pendapatan para petani dan pelayan hanya mencapai',
        'Rp 1,36 juta per bulannya. Hal ini juga yang membuat',
        'jumlah petani dan nelayan di Indonesia terus berkurang setiap .....'
      ],
      Color: '#FFFFFF',
    ),
  ];
}
