import 'package:flutter/material.dart';
import 'package:smart_plant/consult/calls.dart';
import 'package:smart_plant/consult/contstants.dart';
import 'package:smart_plant/consult/model.dart';
import 'package:table_calendar/table_calendar.dart';

class ConsultSreen extends StatelessWidget {
  const ConsultSreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/doctor2.png'),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.edit_outlined),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Selamat Datang',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          " Bersama dr. Jali",
                          style: TextStyle(
                            fontSize: 25,
                            color: kSecondaryColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime(2022),
                lastDay: DateTime(2023),
                calendarFormat: CalendarFormat.week,
                // daysOfWeekVisible: false,
                headerVisible: false,
                calendarStyle: CalendarStyle(
                    weekendDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kPrimaryColor),
                    defaultDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: kPrimaryColor,
                    ),
                    todayDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kSecondaryColor)),
              ),
              const SizedBox(
                height: 30,
              ),
              // Patience Section
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => PatienceCard(
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CallsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const SizedBox(
        height: 60,
        width: 60,
        child: Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: FloatingActionButton(
            backgroundColor: kSecondaryColor,
            onPressed: null,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

class PatienceCard extends StatelessWidget {
  const PatienceCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Products product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CallsScreen(
                    product: products[0],
                  ),
                ),
              );
            },
            child: Row(
              children: [
                Text(product.time),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            style: const TextStyle(
                              fontSize: 16,
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            product.description,
                            style: const TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  product.icon,
                  color: kSecondaryColor,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Divider(height: 2),
          ),
        ],
      ),
    );
  }
}
