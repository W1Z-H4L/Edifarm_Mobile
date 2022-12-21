// import 'package:Edifarm/controler/CurentUser.dart';
// import 'package:Edifarm/shared/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/animation/animation_controller.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/ticker_provider.dart';
// import 'package:get/get.dart';

// class LahanField extends StatefulWidget {
//   const LahanField({super.key});

//   @override
//   State<LahanField> createState() => _LahanFieldState();
// }

// class _LahanFieldState extends State<LahanField> {
//   final CurrentUser _currentUser = Get.put(CurrentUser());

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
//         child: TextFormField(
//           enabled: false,
//           showCursor: true,
//           cursorHeight: 25,
//           style: blackTextStyle2,
//           decoration: InputDecoration(
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             labelText: 'Nama Lahan',
//             hintText: 'ciherang',
//             hintStyle: subtitleTextStyle,
//             labelStyle: greenTextStyle3,
//             focusColor: subtitleColor2,
//             fillColor: subtitleColor2,
//           ),
//         ));
//   }
// }
import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class namaLahanD extends StatefulWidget {
  const namaLahanD({Key? key}) : super(key: key);

  @override
  State<namaLahanD> createState() => _namaLahanState();
}

class _namaLahanState extends State<namaLahanD> {
  late Future listdata;
  List<LahanModel> listdata1 = [];
  @override
  void initState() {
    super.initState();
    listdata = ServiceApiLahan().getData();
    listdata.then((value) {
      setState(() {
        listdata1 = value;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listdata1.length,
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 5),
                  // child: Text(listdata1[index].namaLahan!),
                  child: TextFormField(
                    enabled: true,
                    decoration: InputDecoration(
                      hintText: listdata1[index].namaLahan,
                    ),
                  ));
            }));
  }
}
