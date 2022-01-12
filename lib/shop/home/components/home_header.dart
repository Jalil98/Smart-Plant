import 'package:flutter/material.dart';
import 'package:smart_plant/consult/contstants.dart';

import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: Icon(Icons.shop_2),
                ),
                Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 10,
                            height: 1,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
