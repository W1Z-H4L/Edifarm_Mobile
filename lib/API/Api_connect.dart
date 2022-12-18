class ApiConnect {
  static const hostConnect = "https://ff71-103-3-58-46.ap.ngrok.io//EDIFARM";
  static const connectApi = "$hostConnect/api";

  //login
  static const signin = "$connectApi/login.php";

  //list pertanyaan
  static const pertanyaan = "$connectApi/diagnosa.php";

  //lahan
  static const lahan = "$connectApi/lahan.php";

  //jenis padi
  static const jenis = "$connectApi/jenis_padi.php";
}
