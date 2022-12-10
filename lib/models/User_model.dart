import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  // String? id_user;
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
      {
      // this.id_user,
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

  Map<String, dynamic> toJson() => {
        // 'id_user': id_user,
        'nama': nama,
        'password': password,
        'alamat': alamat,
        'jenisKelamin': jenisKelamin,
        'tanggalLahir': tanggalLahir,
        'caption': caption,
        'lahan': idLahan,
        'idLEvel': idLevel,
        'foto': foto,
        'username': username,
        'email': email,
        'noHp': noHp
      };

  //       factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     json['idUser'],
  //     json['nama'],
  //     json['password'],
  //     json['no_hp'],
  //   );
  // }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        // id_user: json['id_user'],
        username: json['username'],
        nama: json['nama'],
        jenisKelamin: json['jenis_kelamin'],
        alamat: json['alamat'],
        noHp: json['no_hp'],
        tanggalLahir: json['tanggal_lahir'],
        email: json['email'],
        password: json['password'],
        caption: json['caption'],
        idLevel: json['id_level'],
        foto: json['Foto'],
        idLahan: json['id_lahan']);
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = Map<String, dynamic>();
  //   data['id_user'] = this.idUser;
  //   data['username'] = this.username;
  //   data['nama'] = this.nama;
  //   data['jenis_kelamin'] = this.jenisKelamin;
  //   data['alamat'] = this.alamat;
  //   data['no_hp'] = this.noHp;
  //   data['tanggal_lahir'] = this.tanggalLahir;
  //   data['email'] = this.email;
  //   data['password'] = this.password;
  //   data['caption'] = this.caption;
  //   data['id_level'] = this.idLevel;
  //   data['Foto'] = this.foto;
  //   data['id_lahan'] = this.idLahan;
  //   return data;
  // }
}
