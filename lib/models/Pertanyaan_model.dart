class Diagnose {
  final String? idPertanyaan;
  final String? pertanyaan;
  bool? isi;

  Diagnose({this.idPertanyaan, this.pertanyaan, this.isi});

  factory Diagnose.fromJson(Map<String, dynamic> json) {
    return Diagnose(
      idPertanyaan: json['id_pertanyaan'],
      pertanyaan: json['pertanyaan'],
      isi: json['isi'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_pertanyaan'] = this.idPertanyaan;
    data['pertanyaan'] = this.pertanyaan;
    data['isi'] = this.isi;
    return data;
  }
}
