class MenuListData {
  MenuListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
<<<<<<< HEAD:lib/dashboard/models/menu_data.dart
=======
    this.index = 0,
>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/pages/dashboard/models/menu_data.dart
    this.deskripsi,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
<<<<<<< HEAD:lib/dashboard/models/menu_data.dart
  List<String>? deskripsi;

  static List<MenuListData> tabIconsList = <MenuListData>[
=======
  int index;
  List<String>? deskripsi;

  static List<MenuListData> tabMenuList = <MenuListData>[
>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/pages/dashboard/models/menu_data.dart
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
<<<<<<< HEAD:lib/dashboard/models/menu_data.dart
      deskripsi: <String>[
        'Informasi Jenis',
        'Padi Yang Sedang',
        'Ditanam Dilahan'
      ],
=======
      deskripsi: <String>['Informasi Jenis', 'Yang Sedang', 'Ditanam Dilahan'],
>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/pages/dashboard/models/menu_data.dart
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
<<<<<<< HEAD:lib/dashboard/models/menu_data.dart
      deskripsi: <String>[
        'Diagnosa Padi ',
        'Laporkan Cuaca Buruk',
        'Akhir - Akhir Ini'
      ],
=======
      deskripsi: <String>['Diagnosa Padi ', 'Cuaca Buruk', 'Akhir - Akhir Ini'],
>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/pages/dashboard/models/menu_data.dart
      startColor: '#006B6C',
      index: 3,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/gambar_diagnose_cuaca.png',
      titleTxt: 'Diagnosa',
<<<<<<< HEAD:lib/dashboard/models/menu_data.dart
      deskripsi: <String>[
        'Diagnosa Padi ',
        'Laporkan Padi Rusak',
        'Penyebabnya'
      ],
=======
      index: 4,
      deskripsi: <String>['Diagnosa Padi ', 'Padi Rusak', 'Penyebabnya'],
>>>>>>> c0872997ecdcc3498b5b80e90fa2896f04cf7872:lib/ui/pages/dashboard/models/menu_data.dart
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
  ];
}
