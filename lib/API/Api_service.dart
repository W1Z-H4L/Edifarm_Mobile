import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/models/Pertanyaan_model.dart';
import 'package:Edifarm/models/User_model.dart';

import 'package:http/http.dart' as http;

class ServiceApiDiag {
  //get data berita
  Future<List<Diagnose>> getDiag() async {
    final response = await http.get(Uri.parse(ApiConnect.pertanyaan));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => Diagnose.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }
}
