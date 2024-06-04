import 'package:cyber_secure/main.dart';
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
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({super.key});

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title:const Text("Pdf View"),
      ),
      body: SfPdfViewer.asset('assets/secure-remote-desktop-access.pdf'),
      // ListView(
      //   children: [buildheading(context)],
      // ));
    );
  }

  // Widget buildheading(BuildContext context) {
  //   final screenHeight = MediaQuery.of(context).size.height;
  //   final screenWidth = MediaQuery.of(context).size.width;
  //   return Expanded(
  //     child: SfPdfViewer.asset('assets/Cartoon-Handbook-for-Children.pdf'),
  //   );
  // }
}
