class ActListData {
  ActListData({
    this.tanggal = '',
    this.aktivitas = '',
    this.jam = '',
  });

  String tanggal;
  String aktivitas;
  String jam;
  List<String>? description;

  static List<ActListData> tabactList = <ActListData>[
    ActListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pemupukan',
      jam: '08.00 WIB',
    ),
    ActListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi',
      jam: '08.00 WIB',
    ),
    ActListData(
      tanggal: '1 November 2022',
      aktivitas: 'Pestisida',
      jam: '08.00 WIB',
    ),
    ActListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi',
      jam: '08.00 WIB',
    ),
    ActListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi',
      jam: '08.00 WIB',
    ),
    ActListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi',
      jam: '08.00 WIB',
    ),
  ];
}
