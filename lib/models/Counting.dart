class Count_Model {
  String? cOUNTKegiatan;

  Count_Model({this.cOUNTKegiatan});

  Count_Model.fromJson(Map<String, dynamic> json) {
    cOUNTKegiatan = json['COUNT(kegiatan)'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['COUNT(kegiatan)'] = this.cOUNTKegiatan;
    return data;
  }
}
