class JenisModel {
  String? idJenis;
  String? namaJenis;
  String? deskripsi;

  JenisModel({this.idJenis, this.namaJenis, this.deskripsi});

  JenisModel.fromJson(Map<String, dynamic> json) {
    idJenis = json['id_jenis'];
    namaJenis = json['nama_jenis'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_jenis'] = this.idJenis;
    data['nama_jenis'] = this.namaJenis;
    data['deskripsi'] = this.deskripsi;
    return data;
  }
}
