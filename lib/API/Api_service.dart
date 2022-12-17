import 'dart:convert';

import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/models/Pertanyaan_model.dart';
import 'package:Edifarm/models/User_model.dart';

import 'package:http/http.dart' as http;

class ServiceApiDiag {
  //get data berita
  // Future<List<Diagnose>> getDiag() async {
  Future getData() async {
    try {
      final response = await http.get(Uri.parse(ApiConnect.pertanyaan));
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
