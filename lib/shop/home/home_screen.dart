import 'package:flutter/material.dart';
import 'package:smart_plant/shop/home/components/body.dart';

class HomeShopScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeShopScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
