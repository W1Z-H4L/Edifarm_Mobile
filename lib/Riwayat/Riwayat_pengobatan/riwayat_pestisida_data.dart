class PestisidaListData {
  PestisidaListData({
    this.tanggal = '',
    this.aktivitas = '',
    this.jam = '',
  });

  String tanggal;
  String aktivitas;
  String jam;
  List<String>? description;

  static List<PestisidaListData> tabPestisidaList = <PestisidaListData>[
    PestisidaListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - NPK',
      jam: '08.00 WIB',
    ),
    PestisidaListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - SP36',
      jam: '08.00 WIB',
    ),
    PestisidaListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - SP36',
      jam: '08.00 WIB',
    ),
    PestisidaListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - NPK',
      jam: '08.00 WIB',
    ),
    PestisidaListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - SP36',
      jam: '08.00 WIB',
    ),
    PestisidaListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - NPK',
      jam: '08.00 WIB',
    ),
  ];
}
