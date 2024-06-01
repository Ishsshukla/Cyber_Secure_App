// import 'package:cyber_secure/screens/profile.dart';
// import 'package:cyber_secure/screens/utilities.dart';
// import 'package:flutter/material.dart';

// class trendsPage extends StatefulWidget {
//   const trendsPage({super.key});

//   @override
//   State<trendsPage> createState() => _trendsPageState();
// }

// class _trendsPageState extends State<trendsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: [buildheading(context)],
//     ));
//   }

//   Widget buildheading(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           searchBar(context, 'Search Your Fraud Case', false),
//           Padding(
//             padding: const EdgeInsets.only(left: 17.0, top: 12.0),
//             child: CustomText(
//               text: 'Latest Scam Trends',
//               fontStyle: null,
//               color: Color(0xFF00184A),
//               fontSize: 16,
//             ),
//           ),
//           Container(
//             height: screenHeight * 0.73,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   newsBox2(
//                       'assets/info1.png',
//                       '"Deepgakes": The Scary New Scam Using Artificial Intelligence',
//                       '29 March 2024',
//                       '14:31 PM',
//                       0.35,
//                       0.94,
//                       0.21,
//                       context,
//                       trendsPage()),
//                   newsBox2(
//                       'assets/info1.png',
//                       '"Deepgakes": The Scary New Scam Using Artificial Intelligence',
//                       '29 March 2024',
//                       '14:31 PM',
//                       0.35,
//                       0.94,
//                       0.21,
//                       context,
//                       trendsPage()),
//                   newsBox2(
//                       'assets/info1.png',
//                       '"Deepgakes": The Scary New Scam Using Artificial Intelligence',
//                       '29 March 2024',
//                       '14:31 PM',
//                       0.35,
//                       0.94,
//                       0.21,
//                       context,
//                       trendsPage()),
//                   newsBox2(
//                       'assets/info1.png',
//                       '"Deepgakes": The Scary New Scam Using Artificial Intelligence',
//                       '29 March 2024',
//                       '14:31 PM',
//                       0.35,
//                       0.94,
//                       0.21,
//                       context,
//                       profile()),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
