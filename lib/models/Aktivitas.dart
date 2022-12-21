class Aktivitas1 {
  String? idJadwal;
  String? idUser;
  String? kegiatan;
  String? tanggalMulai;
  String? tanggalSelesai;
  String? status;
  String? idSesi;
  String? idLahan;

  Aktivitas1(
      {this.idJadwal,
      this.idUser,
      this.kegiatan,
      this.tanggalMulai,
      this.tanggalSelesai,
      this.status,
      this.idSesi,
      this.idLahan});

  Aktivitas1.fromJson(Map<String, dynamic> json) {
    idJadwal = json['id_jadwal'];
    idUser = json['id_user'];
    kegiatan = json['kegiatan'];
    tanggalMulai = json['tanggal_mulai'];
    tanggalSelesai = json['tanggal_selesai'];
    status = json['status'];
    idSesi = json['id_sesi'];
    idLahan = json['id_lahan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_jadwal'] = this.idJadwal;
    data['id_user'] = this.idUser;
    data['kegiatan'] = this.kegiatan;
    data['tanggal_mulai'] = this.tanggalMulai;
    data['tanggal_selesai'] = this.tanggalSelesai;
    data['status'] = this.status;
    data['id_sesi'] = this.idSesi;
    data['id_lahan'] = this.idLahan;
    return data;
  }
}
