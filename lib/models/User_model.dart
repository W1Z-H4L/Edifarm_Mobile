import 'package:flutter/cupertino.dart';

// class User {
//   String? id_user;
//   String? username;
//   String? nama;
//   String? jenisKelamin;
//   String? alamat;
//   String? noHp;
//   String? tanggalLahir;
//   String? email;
//   String? password;
//   String? caption;
//   String? idLevel;
//   String? foto;
//   String? idLahan;

//   User(
//       {@required this.id_user,
//       @required this.username,
//       @required this.nama,
//       @required this.jenisKelamin,
//       @required this.alamat,
//       @required this.noHp,
//       @required this.tanggalLahir,
//       @required this.email,
//       @required this.password,
//       @required this.caption,
//       @required this.idLevel,
//       @required this.foto,
//       @required this.idLahan});

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//         id_user: json['id_user'],
//         username: json['username'],
//         nama: json['nama'],
//         jenisKelamin: json['jenis_kelamin'],
//         alamat: json['alamat'],
//         noHp: json['no_hp'],
//         tanggalLahir: json['tanggal_lahir'],
//         email: json['email'],
//         password: json['password'],
//         caption: json['caption'],
//         idLevel: json['id_level'],
//         foto: json['Foto'],
//         idLahan: json['id_lahan']);
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id_user'] = this.id_user;
//     data['username'] = this.username;
//     data['nama'] = this.nama;
//     data['jenis_kelamin'] = this.jenisKelamin;
//     data['alamat'] = this.alamat;
//     data['no_hp'] = this.noHp;
//     data['tanggal_lahir'] = this.tanggalLahir;
//     data['email'] = this.email;
//     data['password'] = this.password;
//     data['caption'] = this.caption;
//     data['id_level'] = this.idLevel;
//     data['Foto'] = this.foto;
//     data['id_lahan'] = this.idLahan;
//     return data;
//   }
// }
// class Profil {
//   bool? success;
//   String? message;
//   User? user;

//   Profil({this.success, this.message, this.user});

//   Profil.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     message = json['message'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     data['message'] = this.message;
//     if (this.user != null) {
//       data['user'] = this.user!.toJson();
//     }
//     return data;
//   }
// }

class User {
  String? idUser;
  String? username;
  String? nama;
  String? jenisKelamin;
  String? alamat;
  String? noHp;
  String? tanggalLahir;
  String? email;
  String? password;
  String? caption;
  String? idLevel;
  String? foto;
  String? idLahan;

  User(
      {this.idUser,
      this.username,
      this.nama,
      this.jenisKelamin,
      this.alamat,
      this.noHp,
      this.tanggalLahir,
      this.email,
      this.password,
      this.caption,
      this.idLevel,
      this.foto,
      this.idLahan});

  User.fromJson(Map<String, dynamic> json) {
    idUser = json['id_user'];
    username = json['username'];
    nama = json['nama'];
    jenisKelamin = json['jenis_kelamin'];
    alamat = json['alamat'];
    noHp = json['no_hp'];
    tanggalLahir = json['tanggal_lahir'];
    email = json['email'];
    password = json['password'];
    caption = json['caption'];
    idLevel = json['id_level'];
    foto = json['Foto'];
    idLahan = json['id_lahan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.idUser;
    data['username'] = this.username;
    data['nama'] = this.nama;
    data['jenis_kelamin'] = this.jenisKelamin;
    data['alamat'] = this.alamat;
    data['no_hp'] = this.noHp;
    data['tanggal_lahir'] = this.tanggalLahir;
    data['email'] = this.email;
    data['password'] = this.password;
    data['caption'] = this.caption;
    data['id_level'] = this.idLevel;
    data['Foto'] = this.foto;
    data['id_lahan'] = this.idLahan;
    return data;
  }
}
