import 'package:flutter/material.dart';

class DiseasePage extends StatelessWidget {
  const DiseasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1,
      padding: const EdgeInsets.only(top: 20),
      children: const [
        _Item(
          assets: "assets/Tomat.png",
          title: "Tomat",
        ),
        _Item(
          assets: "assets/potato.png",
          title: "Kentang",
        ),
        _Item(
          assets: "assets/spot (2).png",
          title: "Bawang",
        ),
        _Item(
          assets: "assets/CABAI.png",
          title: "Cabe",
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({Key? key, this.onTap, required this.title, required this.assets})
      : super(key: key);

  final VoidCallback? onTap;
  final String title;
  final String assets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 95,
            height: 95,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(assets),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
