import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpapers/screens/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.transparent
      ),
      debugShowCheckedModeBanner: false,
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light),
        child: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int currentIndex = 1;
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1e2024),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[Feed(), Feed(), Feed()],
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }

  Widget bottomNavBar(BuildContext context) {
    return Container(
      height: 76,
      color: Color(0xFF1a1c20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            tabIcon(0, false, Icons.style, "Acount"),
            tabIcon(1, true, Icons.event, "Events"),
            tabIcon(2, false, Icons.dashboard, "Dashboard"),
          ],
        ),
      ),
    );
  }

  Widget tabIcon(int index, bool selected, IconData icon, String name) {
    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
          tabController.index = currentIndex;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color:
                    currentIndex == index ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(25)),
            child: Icon(
              icon,
              color: currentIndex == index ? Color(0xFF333333) : Colors.white38,
              size: 22,
            ),
          ),
          Text(name,
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.1,
                fontFamily: "Poppins-Light",
                color:
                    currentIndex == index ? Color(0xFFFBFBFB) : Colors.white38,
              ))
        ],
      ),
    );
  }
}
