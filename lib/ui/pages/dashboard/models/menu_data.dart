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
      imagePath: 'assets/icon_menu_activity.png',
      titleTxt: 'Aktivitas',
      index: 4,
      deskripsi: <String>['Rangkaian', 'kegiatan dalam', 'satu hari'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_dashboard.png',
      titleTxt: 'Dashboard',
      index: 4,
      deskripsi: <String>['Tampilan awal', 'aplikasi yang', 'berisi informasi'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_kalender.png',
      titleTxt: 'Kalender',
      index: 4,
      deskripsi: <String>[
        'Kalender untuk',
        'filter kegiatan',
        'berdasarkan tanggal'
      ],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_lahan.png',
      titleTxt: 'Lahan',
      index: 4,
      deskripsi: <String>['Informasi lahan', 'yang sedang', 'dikerjakan'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_akun.png',
      titleTxt: 'Akun',
      index: 4,
      deskripsi: <String>['Informasi diri', 'yang dapat', 'diedit'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_jenis.png',
      titleTxt: 'Jenis',
      deskripsi: <String>['Informasi jenis', 'yang sedang', 'ditanam dilahan'],
      startColor: '#006B6C',
      index: 0,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_diagnose.png',
      titleTxt: 'Diagnosa',
      deskripsi: <String>['Pelaporan ', 'hama padi', 'kepada admin'],
      startColor: '#006B6C',
      index: 1,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_riwayat_diag.png',
      titleTxt: 'Kosultasi',
      deskripsi: <String>['Hasil', 'laporan dari', 'diagnosa padi'],
      startColor: '#006B6C',
      index: 2,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_pupuk.png',
      titleTxt: 'Riwayat Pupuk',
      deskripsi: <String>['Rangkaian', 'riwayat pemupupuk', 'yang dilakukan'],
      startColor: '#006B6C',
      index: 3,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_irigasi.png',
      titleTxt: 'Riwayat Irigasi',
      index: 4,
      deskripsi: <String>['Rangkaian', 'riwayat irigasi', 'yang dilakukan'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_pestisida.png',
      titleTxt: 'Riwayat Pestisida',
      index: 4,
      deskripsi: <String>['Rangkaian', 'riwayat pestisida', 'yang dilakukan'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
  ];
}
