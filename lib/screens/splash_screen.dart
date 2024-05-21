import 'dart:async';

import 'package:cyber_secure/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Image.asset(
              'assets/Logo.png',
              // fit: BoxFit.cover,
              // height: height * 0.2,
              // width: width * 0.5,
            ),
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Text(
          'CyberSecure',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF4E82EA),
            fontSize: 35,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.02,
            letterSpacing: -0.70,
          ),
        ),
        SizedBox(
          height: height * 0.07,
        ),
        SpinKitChasingDots(
          color: Colors.blue,
          size: 40,
        )
      ],
    )));
  }
}