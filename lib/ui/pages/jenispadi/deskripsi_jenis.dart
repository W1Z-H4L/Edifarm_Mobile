import 'package:Edifarm/API/Api_service.dart';
import 'package:Edifarm/models/Jenis_Model.dart';
import 'package:Edifarm/models/Lahan_model.dart';
import 'package:Edifarm/shared/Theme_App.dart';
import 'package:flutter/material.dart';

class DeskripsiJenis extends StatefulWidget {
  const DeskripsiJenis({Key? key}) : super(key: key);

  @override
  State<DeskripsiJenis> createState() => _DeskripsiJenisState();
}

class _DeskripsiJenisState extends State<DeskripsiJenis> {
  late Future listdata;
  List<JenisModel> listdata1 = [];
  @override
  void initState() {
    super.initState();
    listdata = ServiceApiJenis().getData();
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
        height: 200,
        child: listdata1.length == 0
            ? Center(
                child: CircularProgressIndicator(color: AppTheme.orange),
              )
            : ListView.builder(
                itemCount: listdata1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: Text(
                      listdata1[index].deskripsi!,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: AppTheme.fontName,
                        fontSize: 14,
                        letterSpacing: 0.27,
                        color: AppTheme.grey,
                      ),
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }));
  }
}
