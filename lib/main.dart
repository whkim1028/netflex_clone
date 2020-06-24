import 'package:flutter/material.dart';
import 'package:netflexclone/screen/home_screen.dart';
import 'package:netflexclone/screen/more_screen.dart';
import 'package:netflexclone/screen/search_screen.dart';
import './widget/BottomBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'netFlex',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.white),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                SearchScreen(),
                Container(
                  child: Center(
                    child: Text('save'),
                  ),
                ),
                MoreScreen(),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          ),
        ));
  }
}
