import 'package:cyber_secure/screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/complaint.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class document extends StatefulWidget {
  const document({super.key});

  @override
  State<document> createState() => _documentState();
}

class _documentState extends State<document> {

  List<File> _images = [];
  Future _getImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
      }
    });
  }

  Future _getImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final sheight=MediaQuery.of(context).size.height;
    final swidth=MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Ellipse 873.png',scale: 5,),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25,// Color of the divider line
                        ),
                      ),
                      Image.asset('assets/Ellipse 873.png',scale: 5,),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25,// Color of the divider line
                        ),
                      ),
                      Image.asset('assets/Ellipse 873.png',scale: 5,),
                    ],
                  ),
                ),
                SizedBox(height: sheight*0.03,),
                Row(
                  children: [
                    IconButton(
                        onPressed:(){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const NavBar()));
                        },
                        icon: const Icon(Icons.arrow_back_ios)
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Important Documents',
                        style: TextStyle(
                          color: Color(0xff00194A),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),),
                    ),
                  ],
                ),

                SizedBox(height: sheight*0.04,),

                GestureDetector(
                  onTap: () {
                    _showImagePickerDialog(context);
                  },
                    child: Image.asset('assets/evidence.png',scale: 4,)),

                SizedBox(height: sheight*0.05),

                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context)=> document()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Checkout the list of all the important Documents',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                SizedBox(height: sheight*0.01),

                _images.isNotEmpty
                    ? SizedBox(
                  height: sheight * 0.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.file(
                          _images[index],
                          width: swidth * 0.2,
                          height: sheight * 0.2,
                        ),
                      );
                    },
                  ),
                )
                    : Container(),

                SizedBox(height: sheight*0.01),

                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context)=> document()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromCamera();
                },
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}