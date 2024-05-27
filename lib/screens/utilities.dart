// import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cyber_secure/screens/databreach.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

// import 'package:shared_preferences/shared_preferences.dart';

Widget button(String text, double height, double width, BuildContext context,
    Future<void> Function() onTapFunction) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
      await onTapFunction();
      // if (context.mounted) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      // }
      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

Widget button3(
    String text, double height, double width, BuildContext context, page) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
      // await onTapFunction();

      Navigator.push(context, MaterialPageRoute(builder: (context) => page));

      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

Widget button2(String text, double height, double width, BuildContext context,
    Future<void> Function() onTapFunction) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
      await onTapFunction();
      // if (context.mounted) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      // }
      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

Widget buttonchat(String image, BuildContext context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    // onTapFunction();

    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: screenHeight * 0.1,
        width: screenWidth * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image.asset(
            image,
            // height: screenHeight * 0.01,
            // fit: BoxFit.cover,
            scale: 5,
          ),
        )),
  );
}

Widget buttonchat2(String text1, String text2, String text3, String text4,
    BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
      onTap: () {
        var locale = Locale(text3, text4);
        Get.updateLocale(locale);

        // Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      // onTapFunction();

      child: Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   // begin: Alignment(0.00, -1.00),
            //   // end: Alignment(0, 1),
            //   // width:2;
            //   // colors: Color(0xFF245BC9),
            // ),

            borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(
              color: Color(0xFF245BC9), // Set the border color
              width: 2.0, // Set the border width
            ),

            // boxShadow: [
            //   BoxShadow(),
            // ],
          ),
          height: screenHeight * 0.15,
          width: screenWidth * 0.3,
          child: Column(children: [
            SizedBox(height: screenHeight * 0.01),
            Text(
              text1,
              style: TextStyle(
                color: Color(0xFF245BC9),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                // height: 0,
              ),
            ),
// SizedBox(height: screenHeight * 0.01),
            Text(
              text2,
              style: TextStyle(
                color: Color(0xFF245BC9),
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                // height: 0,
              ),
            )
          ])));
  // );
}

// import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  // final String Bold;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText({
    super.key,
    required this.text,
    // this.Bold,
    required this.fontStyle,
    required this.color,
    this.fontSize,
    this.textAlign,
    this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        // fontFamily: ,
        fontWeight: FontWeight.w500,
        fontFamily: fontfamily,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 10,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

class CustomText1 extends StatelessWidget {
  final String text;
  // final String Bold;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText1({
    super.key,
    required this.text,
    // this.Bold,
    required this.fontStyle,
    required this.color,
    this.fontSize,
    this.textAlign,
    this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        // fontFamily: ,
        fontWeight: FontWeight.w600,
        fontFamily: fontfamily,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 10,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

//  import 'package:flutter/material.dart';

// Widget buildtextfiled(BuildContext context, TextEditingController controller,
//       String hinttext, bool obscure, Null Function() param4,String? Function(String?) validator) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: const Color.fromRGBO(148, 108, 195, 0.25).withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       margin: const EdgeInsets.all(15),
//       child: TextFormField(
//         controller: controller,
//         obscureText: obscure,
//         // enabled: false,
//         style: const TextStyle(color: Colors.black),
//         decoration: InputDecoration(
//             fillColor: const Color.fromRGBO(238, 238, 238, 1),
//             filled: true,
//             hintText: hinttext,
//             hintStyle: const TextStyle(color: Colors.grey),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide.none
//                 // borderSide: const BorderSide(color: Colors.blue),
//                 ),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide.none),
//             // disabledBorder: OutlineInputBorder()

//             // suffixText: "hbchjdbch",

//             suffixStyle: const TextStyle(color: Colors.indigo)),
//              validator: validator,
//       ),
//     );
//   }

Widget buildtextfiled(String image, String text, BuildContext context,
    String hinttext, bool obscure, controller) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // SizedBox(width: 900),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: CustomText(
          text: text,
          color: const Color(0xFF00184A),
          fontSize: 14,
          fontStyle: null,
          fontfamily: '',
        ),
      ),
      Container(
          decoration: BoxDecoration(
              // color: Color(0xFFA0A0A0),
              border: Border(
            bottom: BorderSide(width: 1, color: Color(0xFFA0A0A0)),
          )

              // boxShadow: [
              //   BoxShadow(
              //       // color: Color.fromARGB(62, 254, 254, 254).withOpacity(0.2),
              //       // spreadRadius: 2,
              //       // blurRadius: 5,
              //       // offset: const Offset(0, 3),
              //       ),
              // ],
              ),
          // margin: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: screenWidth * 0.9,
            child: Row(children: [
              Image.asset(
                image,
                scale: 4.5,
                height: screenHeight * 0.032,
              ),
              SizedBox(
                width: screenWidth * 0.8,
                child: TextFormField(
                  controller: controller,
                  obscureText: obscure,
                  style: const TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(0, 45, 76, 130),
                    filled: true,
                    hintText: hinttext,
                    hintStyle: const TextStyle(color: Color(0x4C172A48)),
                    // border:
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: Color(0xFFA0A0A0)),
                    // ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(2),
                    //   borderSide: BorderSide.none,
                    // ),
                    // suffixStyle: const TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
            ]),
          ))
    ],
  );
}

Widget optionBox(image, text1, text2, height, context, scale) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => databreach(breach: text1 + text2)));
    },
    child: Container(
        height: screenHeight * height,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Image.asset(
                image,
                scale: scale,
              ),
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00184A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  // height: 0,
                ),
              ),
              Text(
                text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00184A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  // height: 0,
                ),
              ),
            ],
          ),
        )),
  );
}

Widget newsBox(snapshot, index, text1, height, width, h2, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * height,
        width: screenWidth * width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * h2,
                child: CachedNetworkImage(
                    imageUrl:
                        snapshot.data.articles![index].urlToImage.toString(),
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                          child: spinKit2,
                        )),
                // errorWidge/t:(context)
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(6),
                //   // image: DecorationImage(
                //   //   image: AssetImage(image),
                //   //   fit: BoxFit.cover,
                //   // ),
                //   child:ChacheNetworkImage()
                // ),
              ),
              Text(
                snapshot.data!.articles![index].title.toString(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF00184A),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  // height: 0,
                ),
              ),
            ],
          ),
        )),
  );
}

const spinKit2 = SpinKitFadingCircle(
  color: Colors.blue,
  size: 50,
);

Widget newsBox2(snapshot, index, text2, height, width, context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  // final format = DateFormat('MMMM,dd,yyyy');
  return GestureDetector(
    // onTap: () {
    //   Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    // },
    child: Container(
        height: screenHeight * height,
        width: screenWidth * width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.18,
                width: screenWidth * 0.9,
                // decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                    imageUrl:
                        snapshot.data.articles![index].urlToImage.toString(),
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                          child: spinKit2,
                        )),
                // image: DecorationImage(
                //   image: AssetImage(image),
                //   fit: BoxFit.cover,
                // ),
                // ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              // Image.asset(
              //   image,
              //   scale: scale,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: screenWidth * 0.7,
                        child: Text(
                          snapshot.data!.articles![index].title.toString(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF00184A),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            // height: 0,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.bookmark_border_outlined,
                      size: 22.0,
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text2,
                          // snapshot.data!.articles![index].title.toString(),
                          // maxLines: 2,
                          // overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFFA0A0A0),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            // height: 0.12,
                          ),
                        ),
                        // Text(
                        //   text3,
                        //   style: TextStyle(
                        //     color: Color(0xFFA0A0A0),
                        //     fontSize: 12,
                        //     fontFamily: 'Poppins',
                        //     fontWeight: FontWeight.w400,
                        //     // height: 0.12,
                        //   ),
                        // ),
                      ]),
                ),
              )
              // Text(
              //   text2,
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Color(0xFF00184A),
              //     fontSize: 12,
              //     fontFamily: 'Poppins',
              //     fontWeight: FontWeight.w400,
              //     // height: 0,
              //   ),
              // ),
            ],
          ),
        )),
  );
}

Widget searchBar(BuildContext context, String hinttext, bool obscure) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: SizedBox(
            width: screenWidth * 0.9,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(children: [
                Image.asset(
                  'assets/search.png',
                  height: screenHeight * 0.032,
                ),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: TextFormField(
                    obscureText: obscure,
                    style: const TextStyle(color: Colors.black),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid value';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 45, 76, 130),
                      filled: true,
                      hintText: hinttext,
                      hintStyle: const TextStyle(color: Color(0x4C172A48)),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/filter.png',
                  height: screenHeight * 0.032,
                ),
              ]),
            ),
          ))
    ],
  );
}

Widget settingBox(image, text1, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * 0.1,
        // width: screenWidth * width,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image.asset(
                  //   image,
                  //   scale: 1,
                  //   // height: screenHeight * 0.032,
                  // ),

                  // SizedBox(width: screenWidth * 0.1),

                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        image,
                        scale: 5,
                        // height: screenHeight * 0.032,
                      ),

                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        text1,
                        style: TextStyle(
                          color: Color(0xFF00184A),
                          fontSize: 18.37,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          // height: 0,
                        ),
                      ),
                      // SizedBox(width: screenWidth * 0.2),
                      // Icon(
                      //   Icons.arrow_right_sharp,
                      //   size: 38.0,
                      // )
                    ],
                  )
                      // child: Text(
                      //   text1,
                      //   style: TextStyle(
                      //     color: Color(0xFF00184A),
                      //     fontSize: 18.37,
                      //     fontFamily: 'Poppins',
                      //     fontWeight: FontWeight.w500,
                      //     // height: 0,
                      //   ),
                      // ),
                      ),
                  // SizedBox(width: screenWidth * 0.27),
                  Icon(
                    Icons.arrow_right_sharp,
                    size: 38.0,
                  )
                ],
              ),
            ))),
  );
}

Widget personalInfo(image, text1, text2, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        // height: screenHeight * 0.1,
        // width: screenWidth * width,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    scale: 4.5,
                    // height: screenHeight * 0.032,
                  ),
                  SizedBox(width: screenWidth * 0.035),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.5,
                        child: Text(text2,
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 13.57,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ],
                  ),
                  // SizedBox(width: screenWidth * 0.15),
                  // Icon(
                  //   Icons.arrow_right_sharp,
                  //   size: 38.0,
                  // )
                ],
              ),
            ))),
  );
}

// import 'package:flutter/material.dart';
Widget UserInput(String text, TextEditingController controller) {
  return Container(
    child: TextFormField(
      controller: controller,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        color: Color(0xff00194A),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: text,
        labelStyle: const TextStyle(
            color: Color(0xff617193),
            fontSize: 17.9,
            fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xff00194A),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xff00194A),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xff00194A),
            width: 1,
          ),
        ),
      ),
    ),
  );
}

class DottedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  DottedBorderPainter({
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double dashWidth = 5;
    final double dashSpace = 5;

    // Draw top border
    double startX = strokeWidth / 2;
    while (startX < size.width) {
      if (startX + dashWidth > size.width) {
        canvas.drawLine(Offset(startX, 0), Offset(size.width, 0), paint);
      } else {
        canvas.drawLine(
            Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      }
      startX += dashWidth + dashSpace;
    }

    // Draw left border
    double startY = strokeWidth / 2;
    while (startY < size.height) {
      if (startY + dashWidth > size.height) {
        canvas.drawLine(Offset(0, startY), Offset(0, size.height), paint);
      } else {
        canvas.drawLine(
            Offset(0, startY), Offset(0, startY + dashWidth), paint);
      }
      startY += dashWidth + dashSpace;
    }

    // Draw bottom border
    double endX = size.width - strokeWidth / 2;
    while (endX > 0) {
      if (endX - dashWidth < 0) {
        canvas.drawLine(
            Offset(0, size.height), Offset(endX, size.height), paint);
      } else {
        canvas.drawLine(Offset(endX, size.height),
            Offset(endX - dashWidth, size.height), paint);
      }
      endX -= dashWidth + dashSpace;
    }

    // Draw right border
    double endY = size.height - strokeWidth / 2;
    while (endY > 0) {
      if (endY - dashWidth < 0) {
        canvas.drawLine(Offset(size.width, 0), Offset(size.width, endY), paint);
      } else {
        canvas.drawLine(Offset(size.width, endY),
            Offset(size.width, endY - dashWidth), paint);
      }
      endY -= dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}