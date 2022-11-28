import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class jenisPadiPage extends StatefulWidget {
  const jenisPadiPage({super.key});

  @override
  State<jenisPadiPage> createState() => _jenisPadiPageState();
}

class _jenisPadiPageState extends State<jenisPadiPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('gambar_baground_jenis.jpg'),
          opacity: 30,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
