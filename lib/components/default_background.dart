import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultBackground extends StatelessWidget {
  final Widget child;
  final String image;

  const DefaultBackground({Key key, this.image, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height - 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
