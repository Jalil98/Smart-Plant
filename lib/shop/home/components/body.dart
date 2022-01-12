import 'package:flutter/material.dart';
import 'package:smart_plant/consult/contstants.dart';
import 'package:smart_plant/shop/home/components/size_config.dart';
import 'package:smart_plant/shop/home/models/models.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'product_card.dart';
import 'search_field.dart';
import 'section_title.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            HomeHeader(),
            SizedBox(
              height: 20,
            ),
            DiscountBanner(),
            SizedBox(
              height: 20,
            ),
            Categories(),
            SizedBox(
              height: 20,
            ),
            SpecialOffers(),
            SizedBox(
              height: 20,
            ),
            PopularProducts(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
