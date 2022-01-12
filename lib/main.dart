import 'package:flutter/material.dart';
// import 'package:smart_plant/home.dart';
import 'package:smart_plant/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the Banner
      debugShowCheckedModeBanner: false,
      title: 'Smart Plant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
