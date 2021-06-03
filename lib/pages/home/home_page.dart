import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/pages/contact/contact_page.dart';
import 'package:portfolio_flutter_web/pages/home/screen_view/project_screen.dart';
import 'package:portfolio_flutter_web/pages/profile/profile.dart';
import 'package:vertical_navigation_bar/vertical_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;

  final pageController = PageController(initialPage: 0, keepPage: true);

  final navItems = [
    SideNavigationItem(icon: Icons.home, title: "Home"),
    SideNavigationItem(icon: Icons.work, title: "Projetos"),
    SideNavigationItem(icon: Icons.contacts, title: "Contato"),
  ];
  final initialTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Luis Fernando'),
          elevation: 0,
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/brasil.png',
                    height: 60,
                    width: 60,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/usa.png',
                    height: 60,
                    width: 60,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        body: Row(
          children: <Widget>[
            SideNavigation(
              navItems: this.navItems,
              itemSelected: (index) {
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              initialIndex: 0,
              actions: <Widget>[],
            ),
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                controller: pageController,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return ProfilePage();
                  }
                  if (index == 1) {
                    return ProjectScreen();
                  }
                  if (index == 2) {
                    return ContactPage();
                  }
                  return CircularProgressIndicator();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
