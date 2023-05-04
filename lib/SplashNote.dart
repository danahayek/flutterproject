import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'HomePage.dart';

class SplashNote extends StatefulWidget {
  const SplashNote({Key? key}) : super(key: key);

  @override
  State<SplashNote> createState() => _SplashNoteState();
}

class _SplashNoteState extends State<SplashNote> {
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeNote()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,

      body: Center(

        child:
        SpinKitDoubleBounce(
            color:Colors.white,
            size:80.0,


        ),
      ),
    );
  }
}
