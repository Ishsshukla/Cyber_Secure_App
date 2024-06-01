// // import 'package:flutter/material.dart';
// // import 'package:velocity_x/velocity_x.dart';

// // class ChatMessage extends StatelessWidget {
// //   const ChatMessage(
// //       {super.key,
// //       required this.text,
// //       required this.sender,
// //       this.isImage = false});

// //   final String text;
// //   final String sender;
// //   final bool isImage;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Text(sender)
// //             .text
// //             .subtitle1(context)
// //             .make()
// //             .box
// //             .color(sender == "user" ? Vx.red200 : Vx.green200)
// //             .p16
// //             .rounded
// //             .alignCenter
// //             .makeCentered(),
// //         Expanded(
// //           child: isImage
// //               ? AspectRatio(
// //                   aspectRatio: 16 / 9,
// //                   child: Image.network(
// //                     text,
// //                     loadingBuilder: (context, child, loadingProgress) =>
// //                         loadingProgress == null
// //                             ? child
// //                             : const CircularProgressIndicator.adaptive(),
// //                   ),
// //                 )
// //               : text.trim().text.bodyText1(context).make().px8(),
// //         ),
// //       ],
// //     ).py8();
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:cyber_secure/constants/gemini_key.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textController = TextEditingController();
//     RxString result = ''.obs;
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 keyboardType: TextInputType.text,
//                 controller: textController,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   result.value =
//                       await GeminiAPI.getGeminiData(textController.text);
//                 },
//                 child: const Text(
//                   'generate',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Obx(() => Text(
//                     result.value,
//                     style: const TextStyle(color: Colors.black),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }