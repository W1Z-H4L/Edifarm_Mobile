class MenuListData {
  MenuListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.deskripsi,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? deskripsi;

  static List<MenuListData> tabIconsList = <MenuListData>[
    MenuListData(
      imagePath: 'assets/gambar_schedule.png',
      titleTxt: 'Jadwal',
      deskripsi: <String>['Lihat Ada', 'Jadwal Kegiatan', 'Apa Anda Hari Ini'],
      startColor: '#006B6C',
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
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_diagnose_hama.png',
      titleTxt: 'Hama',
      deskripsi: <String>['Diagnosa Padi', 'Laporkan Padi', 'Terserang Hama'],
      startColor: '#006B6C',
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
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_diagnose_cuaca.png',
      titleTxt: 'Diagnosa',
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
