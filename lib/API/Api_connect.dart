class ApiConnect {
  static const hostConnect =
      "https://d126-125-166-118-235.ap.ngrok.io//EDIFARM";
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
}
