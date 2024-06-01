import 'package:cyber_secure/main.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/incident.dart';
import 'package:cyber_secure/screens/loginscreen.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/otpVerification.dart';
import 'package:cyber_secure/screens/background_img.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Remainder extends StatefulWidget {
  const Remainder({super.key});
  // late SharedPreferences prefs;

  @override
  State<Remainder> createState() => _RemainderState();
}

class _RemainderState extends State<Remainder> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [buildheading(context)],
            )),
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: screenHeight * 0.04),
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Color(0xff00194A),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'Reminders',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff00194A),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),
        SizedBox(height: screenHeight * 0.01),
        notification('Your cyber crime report is on Progress', '8:45',
            'assets/message.png', context),

        SizedBox(height: screenHeight * 0.04),
        // button3("I Accept", 40.0, 320.0, context, page()),
      ],
    );
  }
}
