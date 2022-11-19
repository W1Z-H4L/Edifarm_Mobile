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
      imagePath:
          'https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg',
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
      imagePath:
          'https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg',
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
      imagePath:
          'https://cdn06.pramborsfm.com/storage/app/media/Prambors/Editorial/petani-20210326053924.jpg?tr=w-800',
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
      imagePath:
          'https://akcdn.detik.net.id/visual/2021/04/07/perkembangan-program-food-estate-di-kalimantan-tengah-2_169.jpeg?w=650',
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
      imagePath:
          'data:image/jpeg;base64,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',
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
      imagePath:
          'https://st3.depositphotos.com/2572121/17658/i/450/depositphotos_176581344-stock-photo-tay-ninh-vietnam-the-farmers.jpg',
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
