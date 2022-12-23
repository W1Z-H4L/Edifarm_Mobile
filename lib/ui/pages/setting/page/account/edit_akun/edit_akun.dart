import 'dart:convert';
import 'dart:io';
import 'package:Edifarm/API/Api_connect.dart';
import 'package:Edifarm/controler/CurentUser.dart';
import 'package:Edifarm/controler/Remember_User.dart';
import 'package:Edifarm/models/User_model.dart';
import 'package:Edifarm/ui/pages/diagnosa/textbellow.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:Edifarm/ui/pages/setting/pengaturan.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key, this.animationController, this.animation})
      : super(key: key);

  final AnimationController? animationController;
  final Animation<double>? animation;
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage>
    with TickerProviderStateMixin {
  bool showPassword = false;
  Animation<double>? topBarAnimation;
  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController noHp = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Foto = TextEditingController();
  // User user = User();

  // void data() async {
  //   var response = await http.get(Uri.parse(
  //       "https://a4b1-125-166-116-224.ap.ngrok.io//EDIFARM/api/red_data.php"));
  //   setState(() {
  //     user = User();
  //   });
  // }

  @override
  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: widget.animationController!,
            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
    addAllListData();

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    super.initState();
    nama = TextEditingController();
    alamat = TextEditingController();
    noHp = TextEditingController();
    password = TextEditingController();
  }

  bool secureText2 = true;
  showHide2() {
    setState(() {
      secureText2 = !secureText2;
    });
  }

  void addAllListData() {
    const int count = 5;
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  File? image;
  Future<void> getImageGalerry() async {
    var galleryPermission = Permission.storage;

    if (galleryPermission.status == PermissionStatus.denied) {
      galleryPermission.request();
      if (galleryPermission.status == PermissionStatus.permanentlyDenied) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(""))
          ]),
        );
      }
    }

    final ImagePicker picker = ImagePicker();
    final imagePicked = await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked?.path ?? "");
    setState(() {});
  }

  Future getImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final imagePicked = await picker.pickImage(source: ImageSource.camera);
    image = File(imagePicked!.path);
    setState(() {});
  }

  Future _potoBottomSheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () async {
                      await getImageCamera();
                    },
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF2A2A72).withOpacity(0.1),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Color(0xFF006B6C),
                      ),
                    ),
                    title: Text("Unggah dari Camera",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF454444),
                        )),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade200,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppTheme.black,
                        size: 15,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () async {
                      await getImageGalerry();
                    },
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF2A2A72).withOpacity(0.1),
                      ),
                      child: const Icon(
                        Icons.image,
                        color: Color(0xFF006B6C),
                      ),
                    ),
                    title: Text("Unggah dari Galeri",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF454444),
                        )),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade200,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppTheme.black,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nama.dispose();
    noHp.dispose();
    alamat.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Row(children: [
                Container(
                  padding: EdgeInsets.only(right: 0),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppTheme.green,
                        size: 20,
                      )),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 0),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: AppTheme.green,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SettingsPage()));
                    },
                  ),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    image == null
                        ? Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(0, 10))
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://d126-125-166-118-235.ap.ngrok.io//EDIFARM/api/image_profil/" +
                                          _currentUser.user.foto!.toString(),
                                    ))),
                          )
                        : Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(0, 10))
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  // image: Image.file(
                                  //   image ?? File(""),
                                  // ) as ImageProvider<Object>),
                                  image: FileImage(
                                    image ?? File(_currentUser.user.foto!),
                                  ),
                                )),
                          ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: AppTheme.green,
                          ),
                          child: InkWell(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            onTap: () => _potoBottomSheet(),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                _currentUser.user.nama!,
                textAlign: TextAlign.center,
                style: greenTextStyle2.copyWith(
                  fontWeight: extraBold,
                  fontSize: 20,
                  color: subtitleColor2,
                ),
              ),
              Text(
                _currentUser.user.username!,
                textAlign: TextAlign.center,
                style: greenTextStyle2.copyWith(
                  fontSize: 12,
                  color: subtitleColor2,
                ),
              ),
              Text(
                _currentUser.user.caption!,
                textAlign: TextAlign.center,
                style: greenTextStyle2.copyWith(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/icon_edit_biodata.png'),
                    )),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 5, right: 45, bottom: 5),
                      child: Text(
                        'Edit Biodata',
                        textAlign: TextAlign.start,
                        style: greenTextStyle2.copyWith(
                          fontSize: 18,
                          fontWeight: extraBold,
                          color: subtitleColor2,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    controller: nama,
                    showCursor: true,
                    cursorHeight: 20,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.edit_sharp,
                          color: subtitleColor2,
                        ),
                        onPressed: () {},
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Nama',
                      hintText: _currentUser.user.nama,
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 3,
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    controller: alamat,
                    showCursor: true,
                    cursorHeight: 25,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.edit_sharp,
                          color: subtitleColor2,
                        ),
                        onPressed: () {},
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Alamat',
                      hintText: _currentUser.user.alamat,
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 3,
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    controller: noHp,
                    showCursor: true,
                    cursorHeight: 20,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.edit_sharp,
                          color: subtitleColor2,
                        ),
                        onPressed: () {},
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Nomer Telepon',
                      hintText: _currentUser.user.noHp,
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 3,
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    enabled: false,
                    showCursor: true,
                    cursorHeight: 25,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Tanggal Lahir',
                      hintText: _currentUser.user.tanggalLahir,
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 3,
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    enabled: false,
                    showCursor: true,
                    cursorHeight: 25,
                    style: blackTextStyle2,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Jenis Kelamin',
                      hintText: _currentUser.user.jenisKelamin,
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  child: TextFormField(
                    controller: password,
                    showCursor: true,
                    cursorHeight: 25,
                    style: blackTextStyle2,
                    obscureText: secureText2,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          secureText2 ? Icons.visibility_off : Icons.visibility,
                          color: AppTheme.green,
                        ),
                        onPressed: () {
                          showHide2();
                        },
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Password',
                      hintText: 'Masukan Password Lama',
                      hintStyle: subtitleTextStyle,
                      labelStyle: greenTextStyle3,
                      focusColor: subtitleColor2,
                      fillColor: subtitleColor2,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 50, left: 100, bottom: 50, right: 100),
                  child: Container(
                    height: 40,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppTheme.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'Simpan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: AppTheme.fontName,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.only(top: 50, bottom: 50),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: AlertDialog(
                            title: const Text(
                              "Apakah Anda Yakin Ingin Data Diri Anda ? \n ",
                              selectionColor: Colors.white,
                              style: TextStyle(
                                  color: AppTheme.black,
                                  fontFamily: AppTheme.fontName,
                                  fontSize: 12),
                            ),
                            actions: [
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppTheme.orange,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Tidak",
                                      style: TextStyle(
                                          color: AppTheme.white,
                                          fontFamily: AppTheme.fontName,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                              Container(
                                height: 30,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.orange),
                                    color: AppTheme.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                    onPressed: () {
                                      verifyUpdate();
                                    },
                                    child: const Text(
                                      "Ya",
                                      style: TextStyle(
                                          color: AppTheme.orange,
                                          fontFamily: AppTheme.fontName,
                                          fontSize: 10),
                                    )),
                              ),
                            ],
                          ),
                        );
                      });
                },
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }

  void verifyUpdate() {
    if (nama.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Nama Harus Diisi",
        backgroundColor: Colors.red[300],
        fontSize: 12,
      );
    } else if (alamat.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Alamat Harus Diisi",
          backgroundColor: Colors.red[300],
          fontSize: 12);
    } else if (noHp.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Nomor HP Harus Diisi",
          backgroundColor: Colors.red[300],
          fontSize: 12);
    } else if (password.text != _currentUser.user.password) {
      Fluttertoast.showToast(
          msg: "Password Salah",
          backgroundColor: Colors.red[300],
          fontSize: 12);
    } else if (image! == null) {
      Fluttertoast.showToast(
          msg: "Foto Kosong", backgroundColor: Colors.red[300], fontSize: 12);
    } else {
      update();
    }
  }

  final CurrentUser _currentUser = Get.put(CurrentUser());
  Future update() async {
    var response = Uri.parse(ApiConnect.bio);
    var request = http.MultipartRequest('POST', response);
    var pic = await http.MultipartFile.fromPath("image", image!.path);
    request.fields['id_user'] = _currentUser.user.idUser.toString();
    request.fields['nama'] = nama.text.toString();
    request.fields['password'] = password.text.toString();
    request.fields['no_hp'] = noHp.text.toString();
    request.fields['alamat'] = alamat.text.toString();
    request.fields['Foto'] = Foto.text;
    request.files.add(pic);
    var responsen = await request.send();
    if (responsen.statusCode == 200) {
      print("Image Uploaded");

      succes();
    } else {
      print("Image Not Uploded");
      failed();
    }
  }

  void succes() {
    Fluttertoast.showToast(
      msg: "Perubahan Data Berhasil Disimpan",
      backgroundColor: Colors.green[300],
      fontSize: 12,
    );
    Fluttertoast.showToast(
      msg: "Perubahan Login Berhasil Disimpan",
      backgroundColor: Colors.orange[300],
      fontSize: 12,
    );
    Navigator.pushNamed(context, 'sign-in');
  }

  void failed() {
    const Center(
      child: CircularProgressIndicator(color: AppTheme.orange),
    );
    Fluttertoast.showToast(
      msg: "Perubahan Data Gagal Berhasil Disimpan",
      backgroundColor: Colors.red[300],
      fontSize: 12,
    );

    Fluttertoast.showToast(
      msg: "Silahkan Coba Kembali",
      backgroundColor: Colors.red[300],
      fontSize: 12,
    );
  }

  // Future update() async {
  //   try {
  //     var response = await http.post(Uri.parse(ApiConnect.bio), body: {
  //       "nama": name.text.toString(),
  //       "id_user": _currentUser.user.idUser.toString(),
  //       "alamat": alamat.text.toString(),
  //       "no_hp": noHp.text.toString(),
  //       "password": password.text.toString()
  //     });

  //     if (response.statusCode == 200) {
  //       final data = jsonDecode(response.body);

  //       Navigator.pushNamed(context, '/sign-in');
  //     }
  //   } catch (e) {
  //     Fluttertoast.showToast(msg: e.toString());
  //     print(e.toString());
  //   }
  // }
}
