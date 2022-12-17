// import 'dart:convert';

// import 'package:Edifarm/models/Remember_User.dart';
// import 'package:Edifarm/models/User_model.dart';
// import 'package:get/get.dart';

// class CurrentUser extends GetxController {
//   // ignore: prefer_final_fields
//   Rx<User> _currentUser = User(
//     idUser: 'Aditiya',
//     nama: 'Andru Christo Widiyanto',
//     alamat: 'Lumajang',
//     password: '123456',
//     noHp: '085232398005',
//     tanggalLahir: '2002-08-27',
//     jenisKelamin: 'Laki-Laki',
//     username: 'andru27',
//     caption: 'Semangat Sayangku',
//   ).obs;

//   User get user => _currentUser.value;

//   getUserInfo() async {
//     User getUserLocalStorage = await RememberUser.readUser();
//     _currentUser.value = getUserLocalStorage;
//   }
// }
import 'package:Edifarm/models/Remember_User.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController {
  final Rx<User> _currentUser = User(
    idUser: '',
    username: '',
    nama: '',
    jenisKelamin: '',
    alamat: '',
    tanggalLahir: '',
    password: '',
    caption: '',
    noHp: '',
  ).obs;

  User get user => _currentUser.value;

  getUserInfo() async {
    User getUserLocalStorage = await RememberUser.readUser();
    _currentUser.value = getUserLocalStorage;
  }
}
