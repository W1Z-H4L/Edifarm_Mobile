import 'dart:convert';

import 'package:Edifarm/models/User_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class RememberUser {
  storeUser(userInfo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', userInfo);
  }

  static Future<User> readUser() async {
    User currentUserInfo;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userInfo = preferences.getString('username ');
    userInfo != null;
    Map<String, dynamic> userDataMap = jsonDecode(userInfo!);
    currentUserInfo = User.fromJson(userDataMap);
    return currentUserInfo;
  }

  static Future<void> removeUserSessions() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('username');
    await preferences.clear();
    await preferences.commit();
  }
}
