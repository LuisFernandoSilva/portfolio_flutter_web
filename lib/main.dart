import 'package:flutter/material.dart';

import 'dart:ui' as ui;
import 'package:get/get.dart';
import 'package:portfolio_flutter_web/pages/contact/contact_page.dart';
import 'package:portfolio_flutter_web/pages/home/home_page.dart';
import 'package:portfolio_flutter_web/pages/profile/profile.dart';

import 'utils/translation_tags.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: TagsTranslation(),
      locale: ui.window.locale,
      fallbackLocale: Locale('en', 'US'),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            transitionDuration: Duration(seconds: 2),
            transition: Transition.leftToRightWithFade),
        GetPage(
          name: '/profile',
          page: () => ProfilePage(),
          transitionDuration: Duration(seconds: 2),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: '/contact',
          page: () => ContactPage(),
          transitionDuration: Duration(seconds: 2),
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
