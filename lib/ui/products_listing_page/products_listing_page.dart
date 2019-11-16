import 'package:flutter/material.dart';
import 'package:googleproductsapp/models/product.dart';
import 'package:googleproductsapp/widgets/red_button.dart';

import 'left_image_product_item_widget.dart';
import 'right_image_product_item_widget.dart';
import 'top_bar.dart';
import 'two_products_item_widget.dart';

class ProductsListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/images/google_logo.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset("assets/icons/menu.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            RightImageProductItemWidget(
              screenHeight: screenHeight,
              product: pixel,
            ),
            LeftImageProductItemWidget(
              screenHeight: screenHeight,
              product: stadia,
            ),
            TwoProductsItemWidget(
              screenHeight: screenHeight,
              product1: pixelStand,
              product2: dayDreamView,
            ),
            RedButton(buttonText: "View all"),
          ],
        ),
      ),
    );
  }
}
