import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/models/Pertanyaan_model.dart';
import 'package:Edifarm/models/User_model.dart';

import 'package:http/http.dart' as http;

class ServiceApiLahan {
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(ApiConnect.lahan));
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
