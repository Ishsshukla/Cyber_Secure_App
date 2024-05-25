import 'dart:convert';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:http/http.dart' as http;
import 'package:cyber_secure/screens/complaint.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cyber_secure/screens/otpVerification.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  String selectedValue = 'Category of Complaint';
  String selectedValue1 = 'Sub-Category of Complaint';
  final TextEditingController _maincatController = TextEditingController();
  final TextEditingController _subcatController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  // final TextEditingController _ackController = TextEditingController();
  String acknowledgementNumber = '';
  bool _isLoading = false;
  //for date container
  DateTime? selectedDate;
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime(2025),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  //for time container
  TimeOfDay? selectedTime; // Initially no time is selected

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  final _formKey = GlobalKey<FormState>();

  Future<void> _saveForm() async {
    setState(() {
      _isLoading = true;
    });
    if (!_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = false;
      });
    }

    String? accessToken = await getAccessToken();

    if (accessToken == null) {
      // Handle the case where the access token is not available
      return;
    }

    final url = Uri.https('cyber-secure.onrender.com', '/v1/incidentDetails');
    final Map<String, String> requestBody = {
      'category': selectedValue,
      'subcategory': selectedValue1,
      'date': selectedDate.toString(),
      'time': selectedTime.toString(),
      'delayReason': _maincatController.text,
      'additionalInfo': _subcatController.text,
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

      if (response.statusCode == 201) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];
        acknowledgementNumber = responseData['acknowledgementNumber'];
        print('Message from API: $message');
        print('acknowledgementNumber: $acknowledgementNumber');
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
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ComplaintPage(
                      acknowlwdgementNumber: acknowledgementNumber,
                    )));
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) =>
        //           otpVerification(email: _emailController.text),
        //     ));
        setState(() {
          _isLoading = false;
        });
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
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              height: sheight,
              width: swidth,
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
                            'assets/Ellipse 874.png',
                            scale: 3.7,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavBar()));
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Color(0xff00194A),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Incident Details',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff00194A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Container(
                      // height: sheight*0.2,
                      width: swidth * .9,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xff00194A), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          value: selectedValue,
                          // _maincatController =selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          underline: Container(),
                          items: <String>[
                            'Category of Complaint',
                            'Financial Fraud',
                            'Data Breach',
                            'Crypto Scams',
                            'Insurance Fraud',
                            'Social Media Crimes',
                            'Women/Child',
                            'Job Fraud',
                            'Loan Fraud',
                            'Denial of Service',
                            'Online Shopping Fraud',
                            'SIM Swapping Fraud',
                            'Customer Care Fraud',
                            'E-commerce Related Fraud',
                            'Tower Installation Fraud',
                            'Ransomware Attack',
                            'Phishing',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Color(0xff617193), fontSize: 20),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Container(
                      // height: sheight*0.2,
                      width: swidth * .9,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xff00194A), width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          value: selectedValue1,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue1 = newValue!;
                            });
                          },
                          underline: Container(),
                          items: <String>[
                            'Sub-Category of Complaint',
                            'Account Takeover',
                            'Investment Scams',
                            'Sim Swapping'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Color(0xff617193), fontSize: 20),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sheight * 0.04,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Approx Date and time of \nCrime / Incident ',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00194A),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' *',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 19.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //date block
                        GestureDetector(
                          onTap: () => _selectDate(context),
                          child: Container(
                            height: sheight * .05,
                            width: swidth * .42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xff00194A),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 13, right: 10),
                              child: Center(
                                  child: selectedDate == null
                                      ? const Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Icon(
                                                Icons.calendar_month,
                                                size: 20,
                                                color: Color(0xff617193),
                                              ),
                                            ),
                                            Text(
                                              'DD/MM/YYYY',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff617193),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15),
                                              child: Icon(
                                                Icons.calendar_month,
                                                size: 20,
                                              ),
                                            ),
                                            Text(
                                              '${selectedDate!.toLocal()}'
                                                  .split(' ')[0],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: swidth * 0.03,
                        ),

                        //time block
                        GestureDetector(
                          onTap: () => _selectTime(context),
                          child: Container(
                            height: sheight * .05,
                            width: swidth * .4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff00194A)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 13, right: 10),
                              child: Center(
                                  child: selectedTime == null
                                      ? const Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 20),
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                size: 23,
                                                color: Color(0xff617193),
                                              ),
                                            ),
                                            Text(
                                              '00:00 AM',
                                              style: TextStyle(
                                                  color: Color(0xff617193),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 20),
                                              child: Icon(
                                                Icons.access_time_outlined,
                                                size: 20,
                                              ),
                                            ),
                                            Text(
                                              '${selectedTime!.format(context)}',
                                              style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: sheight * 0.6, // Set the maximum height
                      ),
                      child: TextFormField(
                          // TextEditingController? _maincatController,
                          controller: _maincatController,
                           validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 35, 20, 45),
                            labelText: 'Reason for delay if any?',
                            labelStyle: TextStyle(
                                color: Color(0xff617193),
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            isDense: true,
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff00194A),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff00194A),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff00194A),
                                width: 1,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: sheight * 0.6, // Set the maximum height
                      ),
                      child: TextFormField(
                          controller: _subcatController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 35, 20, 45),
                            labelText: 'Additional Information',
                            labelStyle: TextStyle(
                                color: Color(0xff617193),
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff00194A),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff00194A),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Color(0xff00194A),
                                width: 1,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Container(
                      width: swidth,
                      child: ElevatedButton(
                        onPressed: () {
                          _saveForm();
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ComplaintPage()));
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
        ),
      ),
      if (_isLoading)
        Container(
          color: Colors.black.withOpacity(0.5),
          child: const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4E82EA)),
              strokeWidth: 5.0,
            ),
          ),
        ),
    ]);
  }
}