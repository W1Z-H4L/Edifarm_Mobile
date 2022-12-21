import 'dart:convert';

import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/models/User_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class RememberJadwal {
  storeJadwal(JadwalInfo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('jadwal', JadwalInfo);
  }

  static Future<Aktivitas1> readJadwal() async {
    Aktivitas1? currentJadwalInfo;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? JadwalInfo = preferences.getString('jadwal');
    if (JadwalInfo != null) {
      Map<String, dynamic> JadwalDataMap = jsonDecode(JadwalInfo);
      currentJadwalInfo = Aktivitas1.fromJson(JadwalDataMap);
    }
    return currentJadwalInfo!;
  }

  static Future<void> removeJadwalSessions() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('jadwal');
    await preferences.clear();
    await preferences.commit();
  }
}
