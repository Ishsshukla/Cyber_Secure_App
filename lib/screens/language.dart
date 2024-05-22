import 'package:cyber_secure/main.dart';
import 'package:cyber_secure/screens/home.dart';
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

class Language extends StatefulWidget {
  const Language({super.key});
  // late SharedPreferences prefs;

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _nameController = TextEditingController();
  // bool _isLoading = false;

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
        // if (_isLoading)
        //   Container(
        //     color: Colors.black.withOpacity(0.5),
        //     child: Center(
        //       child: CircularProgressIndicator(
        //         valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4E82EA)),
        //         strokeWidth: 5.0,
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: screenHeight * 0.1),
        const CustomText(
          text: "Choose Language",
          color: const Color(0xFF245BC9),
          fontSize: 24,
          fontStyle: null,
          fontfamily: '',
        ),
        SizedBox(height: screenHeight * 0.02),
        const CustomText1(
          text: "भाषा चुनिए",
          color: Color(0xFF245BC9),
          fontSize: 24,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        SizedBox(height: screenHeight * 0.04),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                  text1: 'Hindi - हिंदी', text2: 'ए', text3: 'hi', text4: 'IN'),
              // buttonchat2('Hindi - हिंदी', 'ए', 'hi', 'IN', context),
              // buttonchat2('Marathi - मराठी', 'ஏ', 'mr', 'IN', context),
              CustomButton(
                  text1: 'Marathi - मराठी', text2: 'ஏ', text3: 'mr', text4: 'IN'),
            ]
                // buttonchat2('Telugu - తెలుగు',)
                )),
        SizedBox(height: screenHeight * 0.06),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              // buttonchat2('English- English', 'A', 'en', 'US', context),
              CustomButton(
                  text1: 'English- English', text2: 'A', text3: 'en', text4: 'US'),
              // buttonchat2('kannada-தமிழ்', 'ஏ', '', '', context),
              CustomButton(
                  text1: 'kannada-தமிழ்', text2: 'ஏ', text3: '', text4: ''),
            ])),
        SizedBox(height: screenHeight * 0.06),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      text1: 'Telugu - తెలుగు', text2: 'ఆ', text3: 'hi', text4: 'IN'),
              // buttonchat2('Telugu - తెలుగు', 'ఆ', '', '', context),
              CustomButton(
                  text1: 'Tamil - தமிழ்', text2: 'ஏ', text3: 'hi', text4: 'IN'),
            ])),
        SizedBox(height: screenHeight * 0.04),
        button3("Sign In", 40.0, 320.0, context, NavBar()),
      ],
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CustomButton({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });

        var locale = Locale(widget.text3, widget.text4);
        Get.updateLocale(locale);

        // Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          border: Border.all(
            color: Color(0xFF245BC9),
            width: 2.0,
          ),
          color: isTapped ? Colors.blue : Colors.transparent,
        ),
        height: screenHeight * 0.15,
        width: screenWidth * 0.3,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.01),
            Text(
              widget.text1,
              style: TextStyle(
                color: isTapped ? Colors.white : Color(0xFF245BC9),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              widget.text2,
              style: TextStyle(
                color: isTapped ? Colors.white : Color(0xFF245BC9),
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}