import 'package:flutter/material.dart';
import 'package:smart_plant/consult/contstants.dart';
import 'package:smart_plant/shop/home/models/models.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);
  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            color: product.isFavourite
                                ? kPrimaryColor.withOpacity(0)
                                : kSecondaryColor,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite,
                          color: product.isFavourite
                              ? Color(0xFFFF4848)
                              : Color(0xFFDBDEE4),
                        )),
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
