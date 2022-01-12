import 'package:flutter/material.dart';
import 'package:smart_plant/consult/model.dart';
import 'package:smart_plant/shop/home/details/details_screen.dart';
import 'package:smart_plant/shop/home/models/models.dart';

import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Produk Populer",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    // ignore: curly_braces_in_flow_control_structures
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                          context, DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: demoProducts[index])),
                    );
                  return SizedBox.shrink();
                },
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
