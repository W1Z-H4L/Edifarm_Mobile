import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/controler/CurentUser.dart';

import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/models/Counting.dart';
import 'package:Edifarm/models/Jenis_Model.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/Pertanyaan_model.dart';
import 'package:Edifarm/models/Prosentase.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:Edifarm/models/consul.dart';
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
            DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
      });

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Aktivitas1> blog = it.map((e) => Aktivitas1.fromJson(e)).toList();
        // final jadwal = jsonDecode(response.body);

        // // ignore: non_constant_identifier_names
        // Aktivitas1 JadwalInfo = Aktivitas1.fromJson(jadwal['jadwal']);
        // await RememberJadwal().storeJadwal(json.encode(JadwalInfo));

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

class ServiceApiPupuk {
  Future getData() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.pupuk),
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

class ServiceApiConsul {
  Future getData() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.consul),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Consul_Model> blog =
            it.map((e) => Consul_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiPestisida {
  Future getData() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.pestisida),
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

class ServiceApiCount {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.count),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountBel {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.countbel),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountCount {
  Future getCount() async {
    try {
      var response = await http.post(Uri.parse(ApiConnect.chart),
          body: {"id_user": _currentUser.user.idUser.toString()});

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountIri {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.counti),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountPem {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.countpp),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountPes {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.countp),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountPro {
  Future getData() async {
    try {
      final response = await http.post(Uri.parse(ApiConnect.countpro),
          body: {"id_user": _currentUser.user.idUser.toString()});
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Prosentase> blog = it.map((e) => Prosentase.fromJson(e)).toList();
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

class ServiceApiCountActPes {
  Future getData() async {
    try {
      final response =
          await http.post(Uri.parse(ApiConnect.countpessact), body: {
        "id_user": _currentUser.user.idUser.toString(),
        "tanggal_mulai":
            DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
      });
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountActPem {
  Future getData() async {
    try {
      final response =
          await http.post(Uri.parse(ApiConnect.countpemact), body: {
        "id_user": _currentUser.user.idUser.toString(),
        "tanggal_mulai":
            DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
      });
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountActIri {
  Future getData() async {
    try {
      final response =
          await http.post(Uri.parse(ApiConnect.countiriact), body: {
        "id_user": _currentUser.user.idUser.toString(),
        "tanggal_mulai":
            DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
      });
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class ServiceApiCountActLain {
  Future getData() async {
    try {
      final response =
          await http.post(Uri.parse(ApiConnect.countlainact), body: {
        "id_user": _currentUser.user.idUser.toString(),
        "tanggal_mulai":
            DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
      });
      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Count_Model> blog =
            it.map((e) => Count_Model.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
