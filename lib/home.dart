import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
// import 'package:smart_plant/consult.dart';
import 'package:smart_plant/consult/consult.dart';
import 'package:smart_plant/plant.dart';
import 'package:smart_plant/profil/profil.dart';
import 'package:smart_plant/shop/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index = 0;

  Widget _page() {
    if (_index == 0) {
      return PlantPage(
        title: widget.title,
      );
    }

    if (_index == 1) {
      return ConsultPage(title: widget.title);
    }

    if (_index == 2) {
      return HomeShop(title: widget.title);
    }

    return Profil(
      title: widget.title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page(),
      bottomNavigationBar: SalomonBottomBar(
          onTap: (i) {
            setState(() {
              _index = i;
            });
          },
          currentIndex: _index,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.blue,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite),
              title: const Text("Konsultan"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.table_chart),
              title: const Text("Shop"),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Akun"),
            ),
          ]),
    );
  }
}
