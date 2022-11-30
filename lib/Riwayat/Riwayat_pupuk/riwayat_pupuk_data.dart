class PupukListData {
  PupukListData({
    this.tanggal = '',
    this.aktivitas = '',
    this.jam = '',
  });

  String tanggal;
  String aktivitas;
  String jam;
  List<String>? description;

  static List<PupukListData> tabPupukList = <PupukListData>[
    PupukListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - NPK',
      jam: '08.00 WIB',
    ),
    PupukListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - SP36',
      jam: '08.00 WIB',
    ),
    PupukListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - SP36',
      jam: '08.00 WIB',
    ),
    PupukListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - NPK',
      jam: '08.00 WIB',
    ),
    PupukListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - SP36',
      jam: '08.00 WIB',
    ),
    PupukListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan - NPK',
      jam: '08.00 WIB',
    ),
  ];
}
