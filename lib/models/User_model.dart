import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        idUser: json['id_user'],
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
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
