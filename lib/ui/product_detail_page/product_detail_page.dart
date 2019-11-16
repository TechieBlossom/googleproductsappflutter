import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'product_detail_background.dart';
import 'product_content_widget.dart';
import 'product_detail_top_bar.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProductDetailBackground(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProductDetailTopBar(),
                ProductContentWidget(product: product, screenHeight: screenHeight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
