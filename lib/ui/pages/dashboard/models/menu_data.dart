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
      imagePath: 'assets/icon_menu_setting.png',
      titleTxt: 'Setting',
      deskripsi: <String>['Diagnosa Padi', 'Laporkan Padi', 'Terserang Hama'],
      startColor: '#006B6C',
      index: 2,
      endColor: '#CCE1E2',
    ),
    MenuListData(
      imagePath: 'assets/icon_menu_pupuk.png',
      titleTxt: 'Riwayat Pupuk',
      deskripsi: <String>['Rangkaian', 'riwayat pupuk', 'yang dilakukan'],
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
