import 'package:Edifarm/models/Counting.dart';

class ApiConnect {
  static const hostConnect = "https://a2af-140-213-219-45.ap.ngrok.io//EDIFARM";
  static const connectApi = "$hostConnect/api";

  //login
  static const signin = "$connectApi/login.php";

  //list pertanyaan
  static const pertanyaan = "$connectApi/diagnosa.php";

  //lahan
  static const lahan = "$connectApi/lahan.php";

  //jenis padi
  static const jenis = "$connectApi/jenis_padi.php";

  //lapor
  static const lapor = "$connectApi/lapor.php";

  //aktivitas
  static const aktiv = "$connectApi/jadwal.php";

  //misi
  static const misi = "$connectApi/aktivitas.php";

  //ganti biodata
  static const bio = "$connectApi/update_data.php";

  //edit password
  static const pass = "$connectApi/update_pass.php";

  //search kalender
  static const kalender = "$connectApi/kalender.php";

  //riwayat irigasi
  static const irigasi = "$connectApi/riwayat_irigasi.php";

  //riwayat kegiatan
  static const kegiatan = "$connectApi/aktivitas.php";

  //riwayat pupuk
  static const pupuk = "$connectApi/riwayat_pemupukan.php";

  //riwayat pestisida
  static const pestisida = "$connectApi/riwayat_pestisida.php";

  //chart
  static const chart = "$connectApi/chart.php";

  //chart
  static const count = "$connectApi/counting.php";

  //chart
  static const counti = "$connectApi/counting_iri.php";

  //chart
  static const countp = "$connectApi/counting_pes.php";

  //chart
  static const countpp = "$connectApi/counting_pem.php";

  //chart
  static const countpro = "$connectApi/prosentase.php";

  //profil
  static const profil = "$connectApi/image_profil/.php";

  //profil
  static const countbel = "$connectApi/counting_bel.php";

  //act
  static const countpessact = "$connectApi/counting_act_pess.php";

  //act
  static const countpemact = "$connectApi/counting_act_pem.php";

  //act
  static const countiriact = "$connectApi/counting_act_iri.php";

  //act
  static const countlainact = "$connectApi/counting_act_lain.php";
}
