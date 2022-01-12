import 'package:flutter/material.dart';
import 'package:smart_plant/consult/contstants.dart';
import 'package:smart_plant/consult/home_screen.dart';

class ConsultPage extends StatelessWidget {
  const ConsultPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const Spacer(
                      flex: 4,
                    ),
                    const Text(
                      "Tanaman Sehat",
                      style: TextStyle(
                        fontSize: 40,
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Peduli Kita',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Perawatan Tanaman Sederhana,Cepat\nBermutu!.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 3.0,
                        height: 1.3,
                      ),
                    ),
                    const Spacer(),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConsultSreen(
                              title: 'Shop',
                            ),
                          ),
                        );
                      },
                      color: kPrimaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Konsultasi >>',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Image.asset(
                  'assets/doctor3.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
