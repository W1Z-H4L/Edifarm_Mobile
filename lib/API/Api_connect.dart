class ApiConnect {
  static const hostConnect =
      "https://ec6e-125-166-118-235.ap.ngrok.io//EDIFARM";
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
}
