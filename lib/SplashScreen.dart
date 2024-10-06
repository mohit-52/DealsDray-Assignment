import 'dart:async';

import 'package:dealsdray/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>
    Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:0 , vertical: 50),
        child: Column(
          children: [
            Image.asset(
              'assets/splash.jpg',
              width: double.infinity,
              // height: double.infinity,
            ),
           SizedBox(height: 100,),
            Image.asset(
              'assets/logo.png',

              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
