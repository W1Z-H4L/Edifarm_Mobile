import 'package:Edifarm/models/Remember_User.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController {
  Rx<User> _currentUser = User(
    // id_user: '',
    nama: '',
    alamat: '',
    password: '',
    noHp: '',
    tanggalLahir: '',
    jenisKelamin: '',
    username: '',
    caption: '',
  ).obs;

  User get user => _currentUser.value;

  getUserInfo() async {
    User getUserLocalStorage = await RememberUser.readUser();
    _currentUser.value = getUserLocalStorage;
  }
}
