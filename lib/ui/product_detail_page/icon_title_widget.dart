import 'package:flutter/material.dart';

class IconTitleWidget extends StatelessWidget {
  const IconTitleWidget({
    Key key,
    @required this.title,
    @required this.imagePath,
  }) : super(key: key);

  final String title, imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            color: Color(0xFFDA1D21),
            height: 25,
          ),
          Text(
            title,
            style: TextStyle(color: Color(0xFFDA1D21), fontSize: 10, height: 2),
          ),
        ],
      ),
    );
  }
}
