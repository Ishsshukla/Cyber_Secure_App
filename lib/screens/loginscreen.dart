import 'package:cyber_secure/main.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/otpVerification.dart';
import 'package:cyber_secure/screens/background_img.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  // late SharedPreferences prefs;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool _isLoading = false;

  //
  // late SharedPreferences prefs;
  // // final preferencesManager = PreferencesManager();
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   initSharedPref();
  // }

  // void initSharedPref() async {
  //   prefs = await SharedPreferences.getInstance();
  // }

  //
  Future<void> _saveItem() async {
    setState(() {
      _isLoading = true;
    });
    final url = Uri.https('cyber-secure.onrender.com', '/v1/auth/register');
    // http.post(url,headers:{}, body: json.encode({

    final Map<String, String> requestBody = {
      'email': _emailController.text,
      'name': _nameController.text,
    };
    try {
      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      //
      print(response.statusCode);
      if (response.statusCode == 201) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];

        print('Message from API: $message');
        // Update UI to show success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        // prefs.setString('email', _emailController.text);
        // prefs.setString('name', _nameController.text);
        PreferencesManager().email = _emailController.text;
        PreferencesManager().name = _nameController.text;
        // if (.isNotEmpty) {
        //   prefs.setString('token', );
        //   print('Token stored in prefs: $actualAccessToken');
        // } else {
        //   // Handle the case where the token is empty
        //   print('Token is empty');
        // }

        setState(() {
          _isLoading = false;
        });
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  otpVerification(email: _emailController.text),
            ));
      } else {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];
        print('Failed: $message');
        // Update UI to show success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
        // print('Failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

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
        if (_isLoading)
          Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4E82EA)),
                strokeWidth: 5.0,
              ),
            ),
          ),
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: screenHeight * 0.15),
        const CustomText(
          text: "CyberSecure",
          color: const Color(0xFF4E82EA),
          fontSize: 44,
          fontStyle: null,
          fontfamily: '',
        ),
        SizedBox(height: screenHeight * 0.06),
        const CustomText1(
          text: "Welcome",
          color: Color(0xFF00184A),
          fontSize: 22,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        const CustomText(
          text: "Sign up to continue",
          color: Color(0xFFA0A0A0),
          fontSize: 14,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        SizedBox(
          height: screenHeight * 0.08,
        ),
        buildtextfiled(
          'assets/User1.png',
          "Name",
          context,
          "User",
          false,
          _nameController,
        ),
        buildtextfiled(
          'assets/mingcute_idcard.png',
          "Email",
          context,
          "xyz@gmail.com",
          false,
          _emailController,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.03, bottom: screenHeight * 0.035),
          child: Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'Already Signed Up?',
                      fontStyle: null,
                      fontSize: 14,
                      color: Color(0xFFA0A0A0)),
                  CustomText(
                      text: 'Login',
                      fontStyle: null,
                      fontSize: 14,
                      color: const Color(0xFF4E82EA))
                ]),
          ),
        ),
        button("Sign In", 40.0, 320.0, context, _saveItem)
      ],
    );
  }
}