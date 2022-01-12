import 'package:flutter/material.dart';
import 'package:smart_plant/consult/contstants.dart';
import 'package:smart_plant/consult/model.dart';

class CallsScreen extends StatelessWidget {
  final Products product;

  const CallsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height * 0.7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // go back button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                  // call button position
                  Positioned(
                    bottom: 20,
                    left: 40,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 60,
                        minWidth: 60,
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Icon(
                          Icons.call,
                          color: kSecondaryColor,
                        )),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 40,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 60,
                        minWidth: 60,
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Icon(
                          Icons.video_call,
                          color: kSecondaryColor,
                        )),
                  )
                ],
              ),
              // messages areas
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 80,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            )),
                        child: Text(
                          "Selamat Datang! Selamat berkunjung,Mari berkonsultasi!",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/doctor3.png"),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      reverse: true,
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Tulis Pesan..",
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  IconButton(
                    color: Colors.black38,
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                    ),
                  ),
                  IconButton(
                    color: Colors.black38,
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
