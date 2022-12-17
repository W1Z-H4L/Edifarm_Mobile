class ApiConnect {
  static const hostConnect =
      "https://1324-103-109-209-244.ap.ngrok.io//EDIFARM";
  static const connectApi = "$hostConnect/api";

  //login
  static const signin = "$connectApi/login.php";

  //list pertanyaan
  static const pertanyaan = "$connectApi/diagnosa.php";

  //lahan
  static const lahan = "$connectApi/lahan.php";
}
