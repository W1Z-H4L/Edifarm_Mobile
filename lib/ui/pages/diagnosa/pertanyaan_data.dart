import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Pertanyaan_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:Edifarm/ui/pages/diagnosa/answer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DataDiag extends StatefulWidget {
  const DataDiag({Key? key}) : super(key: key);

  @override
  State<DataDiag> createState() => _DataDiagState();
}

class _DataDiagState extends State<DataDiag> {
  late Future listblog;
  List<Diagnose> listblog1 = [];
  // late Future listblog;
  // ServiceApiDiag repository = ServiceApiDiag();
  // getData() async {
  //   print(listblog);
  //   listblog = await repository.getData();
  // }

  @override
  void initState() {
    super.initState();
    listblog = ServiceApiDiag().getData();
    listblog.then((value) {
      setState(() {
        listblog1 = value;
      });
    });
  }

  // Future<void> getData() async {
  //   listblog = await repository.getData();
  // }
  bool isi = false;

  data() {
    setState(() {
      isi = !isi;
    });
  }
  // @override
  // void initState() {
  //   super.initState();
  //   () async {
  //     await getData();
  //   };
  // }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: listblog1.length == 0
            ? Center(
                child: CircularProgressIndicator(color: AppTheme.orange),
              )
            : ListView.builder(
                itemCount: listblog1.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: DottedBorder(
                      color: AppTheme.green,
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                left: 16,
                              ),
                              child: Expanded(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                    // Text(
                                    //     listblog1[index].idPertanyaan! + '. ',
                                    //     style: const TextStyle(
                                    //       fontFamily: AppTheme.fontName,
                                    //       fontWeight: FontWeight.w500,
                                    //       fontSize: 10,
                                    //       letterSpacing: 0.2,
                                    //       color: AppTheme.black,
                                    //     )),
                                    // Container(
                                    //   width: 280,
                                    //   child: CheckboxListTile(
                                    //     value: isi,
                                    //     onChanged: ((value) {
                                    //       data();
                                    //     }),
                                    //     title: Text(
                                    //       listblog1[index].idPertanyaan! +
                                    //           '. ' +
                                    //           listblog1[index].pertanyaan!,
                                    //       style: const TextStyle(
                                    //         fontFamily: AppTheme.fontName,
                                    //         fontWeight: FontWeight.w500,
                                    //         fontSize: 10,
                                    //         letterSpacing: 0.2,
                                    //         color: AppTheme.black,
                                    //       ),
                                    //     ),
                                    //     checkColor: AppTheme.green,
                                    //     activeColor: AppTheme.green,
                                    //     selected: true,
                                    //     selectedTileColor:
                                    //         AppTheme.background,
                                    //   ),
                                    Container(
                                      width: 220,
                                      child: Text(
                                        listblog1[index].idPertanyaan! +
                                            ". " +
                                            listblog1[index].pertanyaan!,
                                        style: const TextStyle(
                                          fontFamily: AppTheme.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          letterSpacing: 0.2,
                                          color: AppTheme.black,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Answer(),
                                  ])))
                        ],
                      ),
                    ),
                  );
                },
                // separatorBuilder: (context, index) {
                //   return const Divider();
                // },
                // itemCount: listblog1.length));
              ));
  }
}
