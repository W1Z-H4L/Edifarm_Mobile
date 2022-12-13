class IrigasiListData {
  IrigasiListData({
    this.tanggal = '',
    this.aktivitas = '',
    this.jam = '',
  });

  String tanggal;
  String aktivitas;
  String jam;
  List<String>? description;

  static List<IrigasiListData> tabIrigasiList = <IrigasiListData>[
    IrigasiListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi - Hujan',
      jam: '08.00 WIB',
    ),
    IrigasiListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi - Diesel',
      jam: '08.00 WIB',
    ),
    IrigasiListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi - Hujan',
      jam: '08.00 WIB',
    ),
    IrigasiListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi - Diesel',
      jam: '08.00 WIB',
    ),
    IrigasiListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi - Hujan',
      jam: '08.00 WIB',
    ),
    IrigasiListData(
      tanggal: '1 November 2022',
      aktivitas: 'Irigasi - Diesel',
      jam: '08.00 WIB',
    ),
  ];
}
