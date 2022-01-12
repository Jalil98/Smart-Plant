import 'package:flutter/material.dart';

class Products {
  final String image, title, description;
  final int id;
  final IconData icon;
  final String time;

  Products({
    required this.id,
    required this.time,
    required this.icon,
    required this.image,
    required this.title,
    required this.description,
  });

  get price => null;
}

List<Products> products = [
  Products(
    id: 1,
    title: "Kamandanu",
    time: "08:00",
    description: "Spesialis Cabai",
    image: "assets/doctor4.png",
    icon: Icons.video_call_sharp,
  ),
  Products(
    id: 2,
    title: "Adi",
    time: "08:45",
    description: "Spesialis Bawang",
    image: "assets/doctor4.png",
    icon: Icons.call,
  ),
  Products(
    id: 3,
    title: "Dwy",
    time: "09.12",
    description: "Spesialis Kentang",
    image: "assets/doctor4.png",
    icon: Icons.shield,
  ),
  Products(
    id: 4,
    title: "Tia",
    time: "10.10",
    description: "Spesialis",
    image: "assets/doctor4.png",
    icon: Icons.access_time,
  ),
];
