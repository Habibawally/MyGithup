import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Folder_1/Welcome_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  double _progress = 0.0;
  @override
  void initState() {
    super.initState();
    startProgress();
  }

  void startProgress() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      if (_progress < 1.0) {
        setState(() {
          _progress += 0.2;
        });
      } else {
        timer.cancel();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => welcomescreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "images/SplachScreen.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
              Center(
                child: Image.asset(
                  "images/logo .png",
                ),
              ),
              SizedBox(height: 20.0),
              CircularProgressIndicator(
                value: _progress,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ]
                // const CircularProgressIndicator(color: Colors.purpleAccent),
                //
                /*  GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) {
                      return welcomescreen();
                    },)
                      ,);}),*/

                ),
          ],
        )
      ],
    ));
  }
}
