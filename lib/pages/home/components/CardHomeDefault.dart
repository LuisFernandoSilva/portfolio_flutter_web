import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardHomeDefault extends StatelessWidget {
  final int index;
  final String image;
  final String text;
  final String urlImage;

  const CardHomeDefault(
      {Key key, this.index, this.image, this.text, this.urlImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = Get.height * .3;
    double width = Get.width * .3;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              image: DecorationImage(
                image: AssetImage(
                  urlImage,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: width,
            child: Card(
              color: Colors.white,
              elevation: 3,
              child: ListTile(
                subtitle: Text(text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
