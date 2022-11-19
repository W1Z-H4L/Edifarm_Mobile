class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/gambar_schedule.png',
      titleTxt: 'Jadwal',
      meals: <String>['Lihat Ada', 'Jadwal Kegiatan', 'Apa Anda Hari Ini'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MealsListData(
      imagePath: 'assets/gambar_variety.png',
      titleTxt: 'Jenis',
      meals: <String>['Informasi Jenis', 'Padi Yang Sedang', 'Ditanam Dilahan'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MealsListData(
      imagePath: 'assets/gambar_diagnose_hama.png',
      titleTxt: 'Hama',
      meals: <String>['Diagnosa Padi', 'Laporkan Padi', 'Terserang Hama'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MealsListData(
      imagePath: 'assets/gambar_diagnose_cuaca.png',
      titleTxt: 'Cuaca',
      meals: <String>[
        'Diagnosa Padi ',
        'Laporkan Cuaca Buruk',
        'Akhir - Akhir Ini'
      ],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MealsListData(
      imagePath: 'assets/gambar_diagnose_cuaca.png',
      titleTxt: 'Diagnosa',
      meals: <String>['Diagnosa Padi ', 'Laporkan Padi Rusak', 'Penyebabnya'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
  ];
}
