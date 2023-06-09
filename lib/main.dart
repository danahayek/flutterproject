// import 'package:flutter/material.dart';
//
// import 'SplashNote.dart';
//
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashNote(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterproject/Pages/HomePage.dart';

import 'Pages/ProfilePage.dart';
import 'Pages/SettingsPage.dart';
import 'Pages/SplashNote.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
  ));
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashNote()));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  int _currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Note App', style: TextStyle(color: Colors.white)),
        // Set text colorfontWeight: FontWeight.bold,),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/Images/person.png'),
                    radius: 40.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'accountName',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                pageController.jumpToPage(0);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                pageController.jumpToPage(1);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                pageController.jumpToPage(2);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: PageView(
          controller: pageController,
          children: [HomeNote(), ProfilePage(), SettingsPage()]),

    );

  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}