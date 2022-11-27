class MenuListData {
  MenuListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.index = 0,
    this.deskripsi,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  int index;
  List<String>? deskripsi;

  static List<MenuListData> tabMenuList = <MenuListData>[
    MenuListData(
      imagePath: 'assets/gambar_schedule.png',
      titleTxt: 'Jadwal',
      deskripsi: <String>['Lihat Ada', 'Jadwal Kegiatan', 'Apa Anda Hari Ini'],
      startColor: '#006B6C',
      index: 0,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_variety.png',
      titleTxt: 'Jenis',
      deskripsi: <String>[
        'Informasi Jenis',
        'Padi Yang Sedang',
        'Ditanam Dilahan'
      ],
      startColor: '#006B6C',
      index: 1,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_diagnose_hama.png',
      titleTxt: 'Hama',
      deskripsi: <String>['Diagnosa Padi', 'Laporkan Padi', 'Terserang Hama'],
      startColor: '#006B6C',
      index: 2,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_diagnose_cuaca.png',
      titleTxt: 'Cuaca',
      deskripsi: <String>[
        'Diagnosa Padi ',
        'Laporkan Cuaca Buruk',
        'Akhir - Akhir Ini'
      ],
      startColor: '#006B6C',
      index: 3,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_diagnose_cuaca.png',
      titleTxt: 'Diagnosa',
      index: 4,
      deskripsi: <String>[
        'Diagnosa Padi ',
        'Laporkan Padi Rusak',
        'Penyebabnya'
      ],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
  ];
}
