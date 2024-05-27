// import 'package:flutter/material.dart';

// // // class ScrollableContainer extends StatefulWidget {
// // //   @override
// // //   _ScrollableContainerState createState() => _ScrollableContainerState();
// // // }

// // // class _ScrollableContainerState extends State<ScrollableContainer> {
// // //   PageController _pageController = PageController();
// // //   int _currentPage = 0;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       decoration: ShapeDecoration(
// // //         color: Colors.white,
// // //         shape: RoundedRectangleBorder(
// // //           borderRadius: BorderRadius.circular(10),
// // //         ),
// // //         shadows: [
// // //           BoxShadow(
// // //             color: Color(0x0C303030),
// // //             blurRadius: 16,
// // //             offset: Offset(0, 8),
// // //             spreadRadius: 0,
// // //           )
// // //         ],
// // //       ),
// // //       child: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.center,
// // //         children: [
// // //           SizedBox(height: 10),
// // //           Container(
// // //             height: 200, // Adjust the height as needed
// // //             child: PageView(
// // //               controller: _pageController,
// // //               onPageChanged: (int page) {
// // //                 setState(() {
// // //                   _currentPage = page;
// // //                 });
// // //               },
// // //               children: [
// // //                 SingleChildScrollView(
// // //                   scrollDirection: Axis.horizontal,
// // //                   child: Row(
// // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                     children: [
// // //                       optionBox('assets/Data.png', 'Data', 'Breach', 0.15,
// // //                           context, null, 4.0),
// // //                       optionBox('assets/Financial.png', 'Financial Fraud', '',
// // //                           0.15, context, null, 4.0),
// // //                       optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
// // //                           context, null, 1.0),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 SingleChildScrollView(
// // //                   scrollDirection: Axis.horizontal,
// // //                   child: Row(
// // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                     children: [
// // //                       optionBox('assets/digital.png', 'Women/child', '', 0.15,
// // //                           context, null, 4.0),
// // //                       optionBox('assets/Social.png', 'Social Media', 'Crimes',
// // //                           0.15, context, null, 4.0),
// // //                       optionBox('assets/emerging.png', 'Emerging', 'Threats',
// // //                           0.15, context, null, 4.0),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           SizedBox(height: 10),
// // //           buildDots(),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget buildDots() {
// // //     return Row(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: List<Widget>.generate(2, (int index) {
// // //         return Padding(
// // //           padding: const EdgeInsets.all(8.0),
// // //           child: Container(
// // //             width: 10,
// // //             height: 20,
// // //             decoration: BoxDecoration(
// // //               shape: BoxShape.circle,
// // //               color: index == _currentPage ? Colors.blue : Color.fromARGB(255, 0, 0, 0),
// // //             ),
// // //           ),
// // //         );
// // //       }),
// // //     );
// // //   }

// // //   Widget optionBox(String imagePath, String title, String subtitle,
// // //       double height, BuildContext context, dynamic route, double width) {
// // //     return Container(
// // //       height: height * MediaQuery.of(context).size.height,
// // //       width: width * MediaQuery.of(context).size.width,
// // //       child: Column(
// // //         children: [
// // //           Image.asset(
// // //             imagePath,
// // //             height: 20.0,
// // //           ),
// // //           SizedBox(height: 10.0),
// // //           Text(
// // //             title,
// // //             style: TextStyle(
// // //               fontSize: 16.0,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //           Text(subtitle),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class ScrollableContainer extends StatefulWidget {
// //   @override
// //   _ScrollableContainerState createState() => _ScrollableContainerState();
// // }

// // class _ScrollableContainerState extends State<ScrollableContainer> {
// //   PageController _pageController = PageController();
// //   int _currentPage = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: ShapeDecoration(
// //         color: Colors.white,
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         shadows: [
// //           BoxShadow(
// //             color: Color(0x0C303030),
// //             blurRadius: 16,
// //             offset: Offset(0, 8),
// //             spreadRadius: 0,
// //           )
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         children: [
// //           SizedBox(height: 10),
// //           Container(
// //             height: 200, // Adjust the height as needed
// //             child: PageView(
// //               controller: _pageController,
// //               onPageChanged: (int page) {
// //                 setState(() {
// //                   _currentPage = page;
// //                 });
// //               },
// //               children: [
// //                 SingleChildScrollView(
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                     children: [
// //                       optionBox('assets/Data.png', 'Data', 'Breach', 0.15,
// //                           context, null, 4.0),
// //                       optionBox('assets/Financial.png', 'Financial Fraud', '',
// //                           0.15, context, null, 4.0),
// //                       optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
// //                           context, null, 1.0),
// //                     ],
// //                   ),
// //                 ),
// //                 SingleChildScrollView(
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                     children: [
// //                       optionBox('assets/digital.png', 'Women/child', '', 0.15,
// //                           context, null, 4.0),
// //                       optionBox('assets/Social.png', 'Social Media', 'Crimes',
// //                           0.15, context, null, 4.0),
// //                       optionBox('assets/emerging.png', 'Emerging', 'Threats',
// //                           0.15, context, null, 4.0),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 10),
// //           buildDots(),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget buildDots() {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: List<Widget>.generate(2, (int index) {
// //         return Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Container(
// //             width: 10,
// //             height: 20,
// //             decoration: BoxDecoration(
// //               shape: BoxShape.circle,
// //               color: index == _currentPage ? Colors.blue : Color.fromARGB(255, 0, 0, 0),
// //             ),
// //           ),
// //         );
// //       }),
// //     );
// //   }

// //   Widget optionBox(String imagePath, String title, String subtitle,
// //       double height, BuildContext context, dynamic route, double width) {
// //     return Container(
// //       height: height * MediaQuery.of(context).size.height,
// //       width: width * MediaQuery.of(context).size.width,
// //       child: Column(
// //         children: [
// //           Image.asset(
// //             imagePath,
// //             height: 20.0,
// //           ),
// //           SizedBox(height: 10.0),
// //           Text(
// //             title,
// //             style: TextStyle(
// //               fontSize: 16.0,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //           Text(subtitle),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class ScrollableContainer extends StatefulWidget {
//   @override
//   _ScrollableContainerState createState() => _ScrollableContainerState();
// }

// class _ScrollableContainerState extends State<ScrollableContainer> {
//   PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         buildTabs(context),
//         SizedBox(height: 10),
//         Container(
//           height: 200,
//           child: PageView(
//             controller: _pageController,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             children: [
//               buildOptionContainer(context, [
//                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15,
//                     context, '', 4.0),
//                 optionBox('assets/Financial.png', 'Financial Fraud', '',
//                     0.15, context, '', 4.0),
//                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
//                     context, '', 1.0),
//               ]),
//               buildOptionContainer(context, [
//                 optionBox('assets/digital.png', 'Women/child', '', 0.15,
//                     context, '', 4.0),
//                 optionBox('assets/Social.png', 'Social Media', 'Crimes',
//                     0.15, context, '', 4.0),
//                 optionBox('assets/emerging.png', 'Emerging', 'Threats',
//                     0.15, context, '', 4.0),
//               ]),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         buildDots(),
//       ],
//     );
//   }

//   Widget buildTabs(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         buildTab('Tab 1', 0),
//         buildTab('Tab 2', 1),
//         buildTab('Tab 3', 2),
//       ],
//     );
//   }

//   Widget buildTab(String title, int index) {
//     return GestureDetector(
//       onTap: () {
//         _pageController.animateToPage(index,
//             duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 10),
//         decoration: BoxDecoration(
//           color: index == _currentPage ? Colors.blue : Colors.transparent,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Text(
//           title,
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildOptionContainer(BuildContext context, List<Widget> children) {
//     return Container(
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         shadows: [
//           BoxShadow(
//             color: Color(0x0C303030),
//             blurRadius: 16,
//             offset: Offset(0, 8),
//             spreadRadius: 0,
//           )
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: children,
//       ),
//     );
//   }

//   Widget buildDots() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List<Widget>.generate(2, (int index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 10,
//             height: 20,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: index == _currentPage ? Colors.blue : Colors.black,
//             ),
//           ),
//         );
//       }),
//     );
//   }

//   Widget optionBox(String imagePath, String title, String subtitle,
//       double height, BuildContext context, dynamic route, double width) {
//     return Container(
//       height: height * MediaQuery.of(context).size.height,
//       width: width * MediaQuery.of(context).size.width,
//       child: Column(
//         children: [
//           Image.asset(
//             imagePath,
//             height: 20.0,
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(subtitle),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ScrollableContainer extends StatefulWidget {
//   @override
//   _ScrollableContainerState createState() => _ScrollableContainerState();
// }

// class _ScrollableContainerState extends State<ScrollableContainer> {
//   PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         buildTabs(context),
//         SizedBox(height: 10),
//         Container(
//           height: 400,
//           child: PageView(
//             controller: _pageController,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             children: [
//               buildOptionContainer(context, [
//                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15, context,
//                     '', 4.0),
//                 optionBox('assets/Financial.png', 'Financial Fraud', '', 0.15,
//                     context, '', 4.0),
//                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15, context,
//                     '', 1.0),
//               ]),
//               buildOptionContainer(context, [
//                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15, context,
//                     '', 4.0),
//                 optionBox('assets/Financial.png', 'Financial Fraud', '', 0.15,
//                     context, '', 4.0),
//                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15, context,
//                     '', 1.0),
//               ]),
//               buildOptionContainer(context, [
//                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15, context,
//                     '', 4.0),
//                 optionBox('assets/Financial.png', 'Financial Fraud', '', 0.15,
//                     context, '', 4.0),
//                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15, context,
//                     '', 1.0),
//               ]),
//             ],
//           ),
//         ),
//         SizedBox(height: 10),
//         buildDots(),
//       ],
//     );
//   }

//   Widget buildTabs(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         buildTab(0),
//         buildTab(1),
//         buildTab(2),
//       ],
//     );
//   }

//   Widget buildTab(int index) {
//     return GestureDetector(
//       onTap: () {
//         _pageController.animateToPage(index,
//             duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 10),
//         decoration: BoxDecoration(
//           color: index == _currentPage ? Colors.blue : Colors.transparent,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }

//   Widget buildOptionContainer(BuildContext context, List<Widget> children) {
//     return Container(
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         shadows: [
//           BoxShadow(
//             color: Color(0x0C303030),
//             blurRadius: 16,
//             offset: Offset(0, 8),
//             spreadRadius: 0,
//           )
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: children,
//       ),
//     );
//   }

//   Widget buildDots() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List<Widget>.generate(3, (int index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 10,
//             height: 20,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: index == _currentPage ? Colors.blue : Colors.black,
//             ),
//           ),
//         );
//       }),
//     );
//   }

//   Widget optionBox(String imagePath, String title, String subtitle,
//       double height, BuildContext context, dynamic route, double width) {
//     return Container(
//       height: height * MediaQuery.of(context).size.height,
//       width: width * MediaQuery.of(context).size.width,
//       child: Column(
//         children: [
//           Image.asset(
//             imagePath,
//             height: 20.0,
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(subtitle),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:cyber_secure/modules/categories_fraud_trends.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiManager {
  static const String apiUrl = 'https://cyber-secure.onrender.com/v1/cyberCrimeCategories';

  Future<categorieFraudTrends?> fetchData(String category) async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl?category=$category'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        return categorieFraudTrends.fromJson(jsonData);
      } else {
        print('Failed to load data. Status Code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error during API call: $e');
      return null;
    }
  }
}






class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiManager apiManager = ApiManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                fetchDataExample();
              },
              child: Text('Fetch Data'),
            ),
          ],
        ),
      ),
    );
  }

  void fetchDataExample() async {
    String category = "Loan Fraud"; // Replace with the actual category
    categorieFraudTrends? data = await apiManager.fetchData(category);

    if (data != null) {
      // Access the data fields
      print('Category: ${data.crime?.category}');
      print('Description: ${data.crime?.description}');
      print('YouTube Video URL: ${data.crime?.youtubeVideoUrl}');
      print('Protection: ${data.crime?.protection}');
    } else {
      print('Failed to fetch data.');
    }
  }
}