import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.name = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String name;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/icon_dashboard_kecil.png',
      name: 'Dashboard',
      selectedImagePath: 'assets/icon_dashboard_selected.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icon_kalender.png',
      selectedImagePath: 'assets/icon_kalender_selected.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icon_lahan.png',
      selectedImagePath: 'assets/icon_lahan_selected.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icon_profile.png',
      selectedImagePath: 'assets/icon_profile_selected.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icon_act_center.png',
      selectedImagePath: 'assets/icon_act_center.png',
      index: 4,
      isSelected: false,
      animationController: null,
    ),
  ];
}
