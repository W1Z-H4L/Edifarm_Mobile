import 'package:flutter/cupertino.dart';

class DiagnosaListData {
  DiagnosaListData({
    this.no = '',
    this.quetion = '',
    this.answer = '',
    this.description,
  });

  String no;
  String quetion;
  String answer;

  List<String>? description;

  static List<DiagnosaListData> tabDiagList = <DiagnosaListData>[
    DiagnosaListData(
      no: '1. ',
      quetion: 'Ya',
      answer: 'Apakah batang padi bagian tengah anakan terpotong ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '2. ',
      quetion: 'Ya',
      answer: 'Apakah tanaman padi anda berwarna kekuningan ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '3. ',
      quetion: 'Ya',
      answer: 'Apakah anda mengering ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '4. ',
      quetion: 'Ya',
      answer: 'Apakah tanaman anda mengalami kendala pertumbuhan ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '5. ',
      quetion: 'Ya',
      answer: 'Apakah daun padi terdapat lesi belah ketupat ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '6. ',
      quetion: 'Ya',
      answer: 'Apakah batang padi terdapat lesi berwarna coklat ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '7. ',
      quetion: 'Ya',
      answer: 'Apakah bibit tanaman padi anda hilang ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '8. ',
      quetion: 'Ya',
      answer: 'Apakah tanaman padi anda banyak dikerumuni semut ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '9. ',
      quetion: 'Ya',
      answer: 'Apakah waktu berbunga tertunda ?',
      description: <String>[],
    ),
    DiagnosaListData(
      no: '10. ',
      quetion: 'Ya',
      answer: 'Apakah tanaman padi anda anda rusak/habis ?',
      description: <String>[],
    ),
  ];
}
