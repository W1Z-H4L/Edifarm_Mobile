import 'package:Edifarm/controler/Remember_User.dart';
import 'package:Edifarm/controler/Remember_jadwal.dart';
import 'package:Edifarm/models/Aktivitas.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:get/get.dart';

class CurrentJadwal extends GetxController {
  final Rx<Aktivitas1> _currentJadwal = Aktivitas1(
          idUser: '',
          idJadwal: '',
          idSesi: '',
          kegiatan: '',
          status: '',
          tanggalMulai: '',
          tanggalSelesai: '',
          idLahan: '')
      .obs;

  Aktivitas1 get jadwal => _currentJadwal.value;

  getJadwalInfo() async {
    Aktivitas1 getUserLocalStorage = await RememberJadwal.readJadwal();
    _currentJadwal.value = getUserLocalStorage;
  }
}
