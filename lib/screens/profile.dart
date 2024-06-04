import 'package:cyber_secure/main.dart';
import 'package:cyber_secure/screens/caseProgress.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/language.dart';
import 'package:cyber_secure/screens/laywer.dart';
import 'package:cyber_secure/screens/loginscreen.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:cyber_secure/screens/pdfViewer.dart';
import 'package:cyber_secure/screens/test.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/personalInfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late SharedPreferences prefs;
  //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  String? name;
  String? email;

  // Future<void> getUserInfo() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? accessToken = prefs.getString('token');

  //   if (accessToken != null) {
  //     Map<String, dynamic>? decodedToken = JwtDecoder.decode(accessToken);

  //     if (decodedToken != null) {
  //       print('accessToken: $accessToken');
  //       print('decoded toke : $decodedToken');
  //       setState(() {
  //         name = decodedToken['name'];
  //         email = decodedToken['email'];
  //       });
  //     }
  //   }
  // }

  //
  Future<void> clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   getUserInfo();
  // }

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
                width: screenWidth * 0.29,
              ),
              CustomText(
                text: 'Profile'.tr,
                fontStyle: null,
                color: Color(0xFF00184A),
                fontSize: 22,
              ),
            ],
          )),
          SizedBox(
            height: screenHeight * 0.055,
          ),
          Image.asset(
            'assets/girl.png',
            scale: 4.5,
            // height: screenHeight * 0.032,
          ),
          SizedBox(height: screenHeight * 0.02),
          CustomText(
            // text: prefs.getString('name')?? 'User',
            text: PreferencesManager().name ?? 'User',
            fontStyle: null,
            color: Color(0xFF00184A),
            fontSize: 27,
          ),
          SizedBox(height: screenHeight * 0.01),
          CustomText(
            // text: prefs.getString('email') ?? 'xyz@gmail.com',
            text: PreferencesManager().email ?? 'xyz@gmail.com',
            fontStyle: null,
            color: Color(0xFF323142),
            fontSize: 14,
          ),
          settingBox(
              'assets/logOut.png', 'Personal Info'.tr, context, personal()),
          settingBox(
              'assets/logOut.png', 'Cyber Comics'.tr, context, PdfViewer()),
          settingBox(
              'assets/logOut.png', 'Active Cases'.tr, context, caseProgress()),
          settingBox('assets/logOut.png', 'Language'.tr, context, Language()),
          settingBox('assets/logOut.png', 'Lawyers'.tr, context, lawyer()),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  clearSharedPreferences();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logOut.png',
                      scale: 4.5,
                      // height: screenHeight * 0.032,
                    ),
                    SizedBox(width: screenWidth * 0.1),
                    Text(
                      'Logout'.tr,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 18.37,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        // height: 0,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
