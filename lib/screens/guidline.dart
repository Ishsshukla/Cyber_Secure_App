import 'package:cyber_secure/main.dart';
import 'package:cyber_secure/screens/documentUpload.dart';
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

class guide extends StatefulWidget {
  const guide({super.key});
  // late SharedPreferences prefs;

  @override
  State<guide> createState() => _guideState();
}

class _guideState extends State<guide> {
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
            // backgroundColor: Colors.transparent,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => document()));
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Color(0xff00194A),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'Financial Fraud',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF00184A),
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
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const CustomText1(
              text: "Guidelines/Important Documents",
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontStyle: null,
              fontfamily: 'Poppins',
              //  fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const CustomText1(
              text: "• Details and screenshots of websites visited. ",
              color: Color(0xFF333333),
              fontSize: 16,
              fontStyle: null,
              fontfamily: 'Poppins',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const CustomText1(
              text:
                  "• Passbook copy/statement of applicant's bank account. • Copy of the message from the company. ",
              color: Color(0xFF333333),
              fontSize: 16,
              fontStyle: null,
              fontfamily: 'Poppins',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const CustomText1(
              text: "• Copy of debit/credit card.  ",
              color: Color(0xFF333333),
              fontSize: 16,
              fontStyle: null,
              fontfamily: 'Poppins',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const CustomText1(
              text:
                  "• OTP If the money has been deducted without it, the money is refundable as per the guidelines of RBI. So that the applicant informs the branch/RBI ",
              color: Color(0xFF333333),
              fontSize: 16,
              fontStyle: null,
              fontfamily: 'Poppins',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const CustomText1(
              text: "•  Passbook copy/statement of applicant's bank account.  ",
              color: Color(0xFF333333),
              fontSize: 16,
              fontStyle: null,
              fontfamily: 'Poppins',
            ),
          ),
        ])

        // SizedBox(height: screenHeight * 0.04),
        // button3("I Accept", 40.0, 320.0, context, page()),
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
