class Consul_Model {
  String? idConsul;
  String? tanggalConsul;
  String? isi;
  String? foto_consul;
  String? idUser;
  String? status;

  Consul_Model(
      {this.idConsul,
      this.tanggalConsul,
      this.isi,
      this.foto_consul,
      this.idUser,
      this.status});

  Consul_Model.fromJson(Map<String, dynamic> json) {
    idConsul = json['id_consul'];
    tanggalConsul = json['tanggal_consul'];
    isi = json['isi'];
    foto_consul = json['foto_consul'];
    idUser = json['id_user'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_consul'] = this.idConsul;
    data['tanggal_consul'] = this.tanggalConsul;
    data['isi'] = this.isi;
    data['foto_consul'] = this.foto_consul;
    data['id_user'] = this.idUser;
    data['status'] = this.status;
    return data;
  }
}
