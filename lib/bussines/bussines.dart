import 'package:flutter/material.dart';

class BussinesHome extends StatelessWidget {
  const BussinesHome({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Halaman Pinjam Uang"),
    ));
  }
}
