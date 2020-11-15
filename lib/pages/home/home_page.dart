import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/pages/contact/contact_page.dart';
import 'package:portfolio_flutter_web/pages/home/screen_view/home_screen.dart';
import 'package:portfolio_flutter_web/pages/profile/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
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
            title: Row(
              children: [
                Image.asset(
                  'assets/icone_3lSoft.png',
                  height: 60,
                  width: 60,
                ),
                Text(
                  '3L Softwares',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    decorationStyle: TextDecorationStyle.wavy,
                  ),
                ),
              ],
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/tab_bar.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home, color: Colors.white),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Home', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.group_work, color: Colors.white),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Time', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.contacts, color: Colors.white),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Contate nos',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: PageView.builder(
            itemBuilder: (BuildContext context, int index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    HomeScreen(),
                    ProfilePage(),
                    ContactPage(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
