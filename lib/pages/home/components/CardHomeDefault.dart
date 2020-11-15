import 'package:flutter/material.dart';

class CardHomeDefault extends StatelessWidget {
  final int index;
  final String image;
  final String text;

  const CardHomeDefault({Key key, this.index, this.image, this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const double height = 300;
    const double width = 300;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: ListTile(
              subtitle: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}
