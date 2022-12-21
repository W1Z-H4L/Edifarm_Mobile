import 'package:Edifarm/controler/Remember_User.dart';
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
          idLahan: '',
          idJenis: '')
      .obs;

  User get user => _currentUser.value;

  getUserInfo() async {
    User getUserLocalStorage = await RememberUser.readUser();
    _currentUser.value = getUserLocalStorage;
  }
}
