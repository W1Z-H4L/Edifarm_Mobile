import 'package:flutter/material.dart';

class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/gambar_schedule.png',
      titleTxt: 'Jadwal',
      kacl: 525,
      meals: <String>['Lihat', 'Jadwal Kegiatan', 'Anda'],
      startColor: '#006B6C',
      endColor: '#CCE1E2',
    ),
    MealsListData(
      imagePath: 'assets/gambar_variety.png',
      titleTxt: 'Jenis',
      kacl: 602,
      meals: <String>['Jenis', 'Padi Yang', 'Ditanam'],
      startColor: '#CCE1E2',
      endColor: '#FFFFFF',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: 'Snack',
      kacl: 0,
      meals: <String>['Recommend:', '800 kcal'],
      startColor: '#CCE1E2',
      endColor: '#006B6C',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'Dinner',
      kacl: 0,
      meals: <String>['Recommend:', '703 kcal'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
