class Prosentase {
  String? prosentase;

  Prosentase({this.prosentase});

  Prosentase.fromJson(Map<String, dynamic> json) {
    prosentase = json['prosentase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prosentase'] = this.prosentase;
    return data;
  }
}
