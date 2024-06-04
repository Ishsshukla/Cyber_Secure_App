import 'package:cyber_secure/main.dart';
import 'package:cyber_secure/repositroy/active_case.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/incident.dart';
import 'package:cyber_secure/screens/loginscreen.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:cyber_secure/screens/profile.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/otpVerification.dart';
import 'package:cyber_secure/screens/background_img.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class caseProgress extends StatefulWidget {
  const caseProgress({super.key});
  // late SharedPreferences prefs;

  @override
  State<caseProgress> createState() => _caseProgressState();
}

class _caseProgressState extends State<caseProgress> {
  final repository = ActiveCaseRepository(
    client: http.Client(),
  );

  Future<void> fetchData() async {
    try {
      final activeCases = await repository.getActiveCases();
      // Use the list of activeCases in your UI
    } on Exception catch (e) {
      // Handle errors appropriately, e.g., display an error message to the user
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Call the API fetch function in initState
  }

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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.04),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Color(0xff00194A),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'Your Case Progress',
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
          Row(
            children: [
              Image.asset(
                'assets/green.png',
                scale: 4.5,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const CustomText1(
                  text: "Complaint Sent to the Bank",
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                  fontStyle: null,
                  fontfamily: 'Poppins',
                  //  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              Image.asset(
                'assets/green.png',
                scale: 4.5,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const CustomText1(
                  text: "Bank Freezed the account",
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                  fontStyle: null,
                  fontfamily: 'Poppins',
                  //  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              Image.asset(
                'assets/blue.png',
                scale: 4.5,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const CustomText1(
                  text: "Bank Dismissed the proposal",
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                  fontStyle: null,
                  fontfamily: 'Poppins',
                  //  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          // Row(
          //   children: [
          //     Image.asset(
          //       'assets/blue.png',
          //       scale: 4.5,
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(15.0),
          //       child: const CustomText1(
          //         text: "Complaint Sent to the Bank",
          //         color: Color.fromARGB(255, 0, 0, 0),
          //         fontSize: 17,
          //         fontStyle: null,
          //         fontfamily: 'Poppins',
          //         //  fontWeight: FontWeight.w600,
          //       ),
          //     ),
          //   ],
          // ),
          //
          SizedBox(height: screenHeight * 0.04),
          // button3("I Accept", 40.0, 320.0, context, page()),
        ],
      ),
    );
  }
}
