import 'package:flutter/material.dart';
import 'package:googleproductsapp/fade_page_route.dart';
import 'package:googleproductsapp/ui/product_detail_page/product_detail_page.dart';
import 'package:googleproductsapp/ui/products_listing_page/blue_button.dart';

import '../../models/product.dart';

class LeftImageProductItemWidget extends StatelessWidget {
  final screenHeight;

  final Product product;

  const LeftImageProductItemWidget({Key key, this.screenHeight, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(
            widget: ProductDetailPage(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        height: screenHeight * 0.25,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Hero(
                tag: product.name,
                child: Image.asset(product.imagePath),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(fontSize: 8, color: Color(0xFF909090)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BlueButton(
                      product: product,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
