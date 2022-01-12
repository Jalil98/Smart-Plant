import 'package:flutter/material.dart';
import 'package:smart_plant/shop/home/models/models.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  // const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("selamat datang"),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
