import 'package:cyber_secure/screens/navbar.dart';
import 'package:cyber_secure/screens/profile.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class personal extends StatefulWidget {
  const personal({super.key});

  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
   late SharedPreferences prefs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [buildheading(context)],
    ));
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 22.0,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.2,
              ),
              CustomText(
                text: 'Personal Info',
                fontStyle: null,
                color: Color(0xFF00184A),
                fontSize: 22,
              ),
            ],
          )),
          SizedBox(
            height: screenHeight * 0.1,
          ),
          personalInfo('assets/User.png', 'Account Information',
              'Change your Account information', context, personal()),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          // personalInfo('assets/User.png', 'Password', 'Change your Password',
          //     context, personal()),
          // SizedBox(
          //   height: screenHeight * 0.01,
          // ),
          personalInfo('assets/Password.png', 'Share With Your Friends',
              'Get 3 For Each Invitation!', context, NavBar()),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          personalInfo('assets/User.png', 'Theme Color',
              'Change Your Theme Colour', context, NavBar()),
        ],
      ),
    );
  }
}