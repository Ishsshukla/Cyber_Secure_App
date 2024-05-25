import 'dart:convert';
import 'package:cyber_secure/screens/documentUpload.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:cyber_secure/screens/profile.dart';
import 'package:http/http.dart' as http;
import 'package:cyber_secure/screens/Utilities.dart';
import 'package:cyber_secure/screens/incident.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

class ComplaintPage extends StatefulWidget {
  final String acknowlwdgementNumber;
  const ComplaintPage({Key? key, required this.acknowlwdgementNumber})
      : super(key: key);

  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _houseController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _nearestController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  bool _isLoading = false;
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

  File? _image;
  Future _getImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
    });
  }

  Future _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
    });
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> _saveComplaintes() async {
    setState(() {
      _isLoading = true;
    });

    String? accessToken = await getAccessToken();

    if (accessToken == null) {
      // Handle the case where the access token is not available
      return;
    }

    final url =
        Uri.https('cyber-secure.onrender.com', '/v1/complainantDetails');
    final Map<String, String> requestBody = {
      'acknowledgementNumber': widget.acknowlwdgementNumber,
      'name': _nameController.text,
      'gender': _genderController.text,
      'houseNo': _houseController.text,
      'country': _countryController.text,
      'streetName': _streetController.text,
      'state': _stateController.text,
      'district': _districtController.text,
      'nearestPoliceStation': _nearestController.text,
    };
    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken'
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];
        print('Message from API: $message');
        print('acknowlwdgementNumber: ${widget.acknowlwdgementNumber}');
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
        // _saveId(_image?.path);
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const document()));
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) =>
        //           otpVerification(email: _emailController.text),
        //     ));
        setState(() {
          _isLoading = false;
        });
        // _saveId(_image?.path);
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

  //
  // Future<void> _saveId(String? imagePath) async {
  //   setState(() {
  //     _isLoading = true;
  //   });

  //   String? accessToken = await getAccessToken();

  //   if (accessToken == null) {
  //     // Handle the case where the access token is not available
  //     return;
  //   }

  //   final url =
  //       Uri.https('cyber-secure.onrender.com', '/v1/importantDocuments');
  //   final Map<String, String> requestBody = {
  //     'acknowledgementNumber': widget.acknowlwdgementNumber,
  //     'importantDocument': imagePath ?? '',
  //   };
  //   try {
  //     final response = await http.post(
  //       url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $accessToken'
  //       },
  //       body: jsonEncode(requestBody),
  //     );

  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> responseData = json.decode(response.body);
  //       final message = responseData['message'];
  //       print('Message from API documentUpload: $message');
  //       print('acknowlwdgementNumber: ${widget.acknowlwdgementNumber}');
  //       // Update UI to show success message or navigate to another screen
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(message),
  //           duration: const Duration(seconds: 3),
  //         ),
  //       );
  //       setState(() {
  //         _isLoading = false;
  //       });

  //       setState(() {
  //         _isLoading = false;
  //       });
  //     } else {
  //       final Map<String, dynamic> responseData = json.decode(response.body);
  //       final message = responseData['message'];
  //       print('Failed: $message');
  //       // Update UI to show success message or navigate to another screen
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(message),
  //           duration: const Duration(seconds: 3),
  //         ),
  //       );
  //       setState(() {
  //         _isLoading = false;
  //       });
  //       // print('Failed: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   }
  // }

  Future<void> _saveId(String? imagePath) async {
    const maxRetries = 3;
    int retryCount = 0;

    while (retryCount < maxRetries) {
      try {
        await _uploadImage(imagePath);
        return;
      } catch (e) {
        print('Error: $e');
        retryCount++;
        print('Retrying... Attempt $retryCount of $maxRetries');
      }
    }

    print('Max retries reached. Unable to upload image.');
  }

  Future<void> _uploadImage(String? imagePath) async {
    setState(() {
      _isLoading = true;
    });

    String? accessToken = await getAccessToken();

    if (accessToken == null) {
      // Handle the case where the access token is not available
      return;
    }

    final url =
        Uri.parse('https://cyber-secure.onrender.com/v1/importantDocuments');
    var request = http.MultipartRequest('POST', url);
    request.headers.addAll({
      'Authorization': 'Bearer $accessToken',
    });
    print('$accessToken');

    request.fields.addAll({
      'acknowledgementNumber': widget.acknowlwdgementNumber,
    });

    if (imagePath != null) {
      request.files.add(
          await http.MultipartFile.fromPath('importantDocument', imagePath));
    }

    try {
      final response = await request.send();

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData =
            json.decode(await response.stream.bytesToString());
        final message = responseData['message'];
        print('Message from API documentUpload: $message');
        print('acknowlwdgementNumber: ${widget.acknowlwdgementNumber}');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
        // Continue with your navigation or other actions
      } else {
        print('Failed: ${response.statusCode}');


        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Failed to upload document. Status Code: ${response.statusCode}'),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error uploading document'),
          duration: const Duration(seconds: 3),
        ),
      );
      setState(() {
        _isLoading = false;
      });
    }
  }

//
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Ellipse 873.png',
                        scale: 5,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25, // Color of the divider line
                        ),
                      ),
                      Image.asset(
                        'assets/Ellipse 873.png',
                        scale: 5,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25, // Color of the divider line
                        ),
                      ),
                      Image.asset(
                        'assets/Ellipse 874.png',
                        scale: 3.7,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sheight * 0.03,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const page()));
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Complaint Details',
                        style: TextStyle(
                          color: Color(0xff00194A),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sheight * 0.03,
                ),
                UserInput('Name', _nameController),
                SizedBox(
                  height: sheight * 0.04,
                ),
                UserInput('Gender', _genderController),
                SizedBox(
                  height: sheight * 0.03,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                    color: Color(0xff00194A),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: sheight * 0.03,
                ),
                Row(
                  children: [
                    Expanded(child: UserInput('House No.', _houseController)),
                    SizedBox(
                      width: swidth * 0.03,
                    ),
                    Expanded(child: UserInput('Country', _countryController))
                  ],
                ),
                SizedBox(
                  height: sheight * 0.03,
                ),
                Row(
                  children: [
                    Flexible(
                        child: UserInput('Street Name', _streetController),
                        flex: 3),
                    SizedBox(
                      width: swidth * 0.03,
                    ),
                    Flexible(
                        child: UserInput('State', _stateController), flex: 2)
                  ],
                ),
                SizedBox(
                  height: sheight * 0.03,
                ),
                Row(
                  children: [
                    Flexible(
                        child: UserInput('District', _districtController),
                        flex: 4),
                    SizedBox(
                      width: swidth * 0.03,
                    ),
                    Flexible(
                        child: UserInput(
                            'Nearest Police Station', _nearestController),
                        flex: 7)
                  ],
                ),
                SizedBox(
                  height: sheight * 0.04,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      _showImagePickerDialog(context);
                    },
                    child: Container(
                      height: sheight * 0.19,
                      child: CustomPaint(
                        painter: DottedBorderPainter(
                          color: Color(0xff00194A),
                          strokeWidth: 2,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(33, 20, 33, 0),
                          child: _image != null
                              ? Image.file(_image!, scale: 4)
                              : Column(
                                  children: [
                                    Image.asset('assets/rahul.png', scale: 3),
                                    SizedBox(height: sheight * 0.025),
                                    Text(
                                      'Upload Your Aadhar Card',
                                      style: TextStyle(
                                        color: Color(0xff00194A),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: sheight * 0.035,
                ),
                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      _saveComplaintes();
                      _saveId(_image?.path);
                      // Navigator.pushReplacement(context,
                      // MaterialPageRoute(builder: (context) => profile()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Continue',
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