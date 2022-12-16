class Diagnose {
  String? idPertanyaan;
  String? pertanyaan;

  Diagnose({this.idPertanyaan, this.pertanyaan});

  Diagnose.fromJson(Map<String, dynamic> json) {
    idPertanyaan = json['id_pertanyaan'];
    pertanyaan = json['pertanyaan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_pertanyaan'] = this.idPertanyaan;
    data['pertanyaan'] = this.pertanyaan;
    return data;
  }
}
