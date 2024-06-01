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

class Analysis extends StatefulWidget {
  const Analysis({super.key});
  // late SharedPreferences prefs;

  @override
  State<Analysis> createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
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
                'Analysis',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff00194A),
                ),
              ),
            ),
          ],
        ),
        // SizedBox(height: screenHeight * 0.1),
        // const CustomText(
        //   text: "Incident Details",
        //   color: const Color(0xFF245BC9),
        //   fontSize: 20,
        //   fontStyle: null,
        //   fontfamily: '',
        // ),
        SizedBox(height: screenHeight * 0.02),

        graph('assets/gambar1.png', 'No. of Cases vs Types of CyberCrimes',
            context),

        SizedBox(height: screenHeight * 0.02),

        graph('assets/gambar2.png', 'No. of Cases vs Motive', context),
        SizedBox(height: screenHeight * 0.02),

        graph(
            'assets/gambar3.png', 'No. of Cases vs Types of offence ', context),
        SizedBox(height: screenHeight * 0.02),

        graph('assets/gambar4.png', 'No. of Cases vs Types of cyber crimes',
            context),
        SizedBox(height: screenHeight * 0.02),

        graph('assets/gambar5.png', 'No. of Cases vs Types of cyber crimes',
            context),
        // button3("I Accept", 40.0, 320.0, context, page()),
      ],
    );
  }
}
