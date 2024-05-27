// import 'package:cyber_secure/screens/disclamer.dart';
// import 'package:cyber_secure/screens/incident.dart';
// import 'package:flutter/material.dart';
// import 'package:cyber_secure/screens/home.dart';
// import 'package:cyber_secure/screens/complaint.dart';
// import 'package:cyber_secure/screens/trendsSearch.dart';
// import 'package:cyber_secure/screens/profile.dart';
// import 'package:get/get.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class NavBar extends StatefulWidget {
//   const NavBar({Key? key}) : super(key: key);

//   @override
//   State<NavBar> createState() => _AppAfterLoginState();
// }

// class _AppAfterLoginState extends State<NavBar> {
//   int currentIndex = 0;
//   late SharedPreferences prefs;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initSharedPref();
//   }

//   void initSharedPref() async {
//     prefs = await SharedPreferences.getInstance();
//   }

//   final screens =  [
//     home(),
//     CustomDropDownWidget(),
//     desclamier(),
//     profile(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//         body: Expanded(child: screens[currentIndex]),
//         bottomNavigationBar: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 blurRadius: 20,
//                 color: Colors.black.withOpacity(.1),
//               )
//             ],
//           ),
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: GNav(
//                 gap: 8,
//                 activeColor: Colors.white,
//                 iconSize: 25,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Color(0xff4E82EA),
//                 color: Colors.grey,
//                 tabs: [
//                   GButton(
//                     icon: Icons.home_outlined,
//                     text: 'Home'.tr,
//                   ),
//                   GButton(
//                     icon: Icons.table_view_sharp,
//                     text: 'Analysis'.tr,
//                   ),
//                   GButton(
//                     icon: Icons.cases_outlined,
//                     text: 'Complain'.tr,
//                   ),
//                   GButton(
//                     icon: Icons.account_circle_outlined,
//                     text: 'Profile'.tr,
//                   ),
//                 ],
//                 selectedIndex: currentIndex,
//                 onTabChange: (index) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 },
//               ),
//             ),
//           ),
//         ));
//   }
// }



import 'package:cyber_secure/screens/incident.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/trendsSearch.dart';
import 'package:cyber_secure/screens/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _AppAfterLoginState();
}

class _AppAfterLoginState extends State<NavBar> {
  int currentIndex = 0;

  final screens = const  [
    home(),
    CustomDropDownWidget(),
    page(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: screens[currentIndex]),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 26,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: const Color(0xff4E82EA),
                color: Colors.grey,
                tabs: const [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.table_view_sharp,
                    text: 'Analysis',
                  ),
                  GButton(
                    icon: Icons.cases_outlined,
                    text: 'Incident',
                  ),
                  GButton(
                    icon: Icons.account_circle_outlined,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: currentIndex,
                onTabChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ));
  }
}