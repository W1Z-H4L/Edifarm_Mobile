import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/models/Jenis_Model.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/Pertanyaan_model.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ServiceApiDiag {
  //get data berita
  // Future<List<Diagnose>> getDiag() async {
  Future getData() async {
    try {
      final response = await http.patch(Uri.parse(ApiConnect.pertanyaan));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Diagnose> blog = it.map((e) => Diagnose.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
    // if (response.statusCode == 200) {
    //   List jsonResponse = json.decode(response.body);
    //   return jsonResponse.map((e) => Diagnose.fromJson(e)).toList();
    // } else {
    //   throw Exception('Failed to load');
    // }
  }
}

final CurrentUser _currentUser = Get.put(CurrentUser());

class ServiceApiAktiv {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.aktiv), body: {
        "id_user": _currentUser.user.idUser.toString(),
        "tanggal_mulai":
            DateFormat('yyyy mm dd').format(DateTime.now()).toString()
      });

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Aktivitas1> blog = it.map((e) => Aktivitas1.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiLahan {
  Future getData() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.lahan),
          body: {"id_lahan": _currentUser.user.idLahan.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<LahanModel> blog = it.map((e) => LahanModel.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiIri {
  Future getData() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.irigasi),
          body: {"id_lahan": _currentUser.user.idLahan.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Aktivitas1> blog = it.map((e) => Aktivitas1.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiJenis {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.jenis),
          body: {"id_jenis": _currentUser.user.idJenis.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<JenisModel> blog = it.map((e) => JenisModel.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiLogin {
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(ApiConnect.signin));
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<User> blog = it.map((e) => User.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
