class LahanModel {
  String? idLahan;
  String? namaLahan;
  String? luasLahan;
  String? tempat;
  String? deskripsi;

  LahanModel(
      {this.idLahan,
      this.namaLahan,
      this.luasLahan,
      this.tempat,
      this.deskripsi});

  LahanModel.fromJson(Map<String, dynamic> json) {
    idLahan = json['id_lahan'];
    namaLahan = json['nama_lahan'];
    luasLahan = json['luas_lahan'];
    tempat = json['tempat'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_lahan'] = this.idLahan;
    data['nama_lahan'] = this.namaLahan;
    data['luas_lahan'] = this.luasLahan;
    data['tempat'] = this.tempat;
    data['deskripsi'] = this.deskripsi;
    return data;
  }
}
