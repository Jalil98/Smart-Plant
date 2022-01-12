import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Profil'),
      ),
    );
  }
}
