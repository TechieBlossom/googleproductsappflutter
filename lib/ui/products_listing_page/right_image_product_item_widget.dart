import 'package:flutter/material.dart';
import 'package:googleproductsapp/ui/products_listing_page/blue_button.dart';
import '../../models/product.dart';

class RightImageProductItemWidget extends StatelessWidget {
  final screenHeight;

  final Product product;

  const RightImageProductItemWidget({Key key, this.screenHeight, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32),
      height: screenHeight * 0.3,
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(product.description, style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),),
                SizedBox(height: 10,),
                BlueButton(product: product,)
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: -50,
                  top: 50,
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Image.asset(product.imagePath),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
