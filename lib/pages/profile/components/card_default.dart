import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardProfileDefault extends StatelessWidget {
  final String urlImage;
  final String name;
  final String description;
  final int index;

  const CardProfileDefault(
      {Key key, this.urlImage, this.name, this.description, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: Get.width * .5,
        child: Card(
          margin: const EdgeInsets.all(16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  urlImage,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      description,
                      softWrap: true,
                    ),
                  ),
                  isThreeLine: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
