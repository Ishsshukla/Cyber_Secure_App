import 'package:cyber_secure/modules/categories_new_model.dart';
import 'package:cyber_secure/screens/complaint.dart';
import 'package:cyber_secure/screens/feed.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/player.dart';
import 'package:flutter/material.dart';

import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/view/view_model/news_view_model.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class financialFraud extends StatefulWidget {
  const financialFraud({super.key});

  @override
  State<financialFraud> createState() => _financialFraudState();
}

class _financialFraudState extends State<financialFraud> {
  NewsViewModel newsViewModel = NewsViewModel();
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
  // final format = DateFormat('MMMM dd, yyyy');

  String selectedValue = 'Financial Fraud';
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Color(0xff00194A),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Financial Fraud',
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
                    Center(
                      child: Text(
                        'FINANCIAL FRAUD Scammers are increasingly impersonating bank officials to trick victims into revealing their debit/credit card details. They may threaten account closure or lure with fake deals. Once they have your card number, CVV, and OTP, they steal your money. In other cases, stolen data or skimming devices might be used without any contact. Be wary of suspicious calls and protect your card details. Report any fraud immediately.',
                        // 'In simple parlance, if any information or data which belongs to a person or organization gets stolen by methods of spoofing, phishing and malware attack, it can be identified as data theft. The data can also be stolen from website, computer, pen drive or email.',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videoUrls.length,
              itemBuilder: (context, index) {
                final videoID = YoutubePlayer.convertUrlToId(videoUrls[index]);

                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PLayerScreen(videoId: videoID)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          YoutubePlayer.getThumbnail(videoId: videoID!)),
                    ));
              },
            ),
          ),
          Expanded(
            child: FutureBuilder<CategoriesNewsModel>(
                future: newsViewModel.fetchCategoriesNewsApi(selectedValue),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: SpinKitCircle(
                        size: 50,
                        color: Colors.blue,
                      ),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.articles!.length,
                        itemBuilder: (context, index) {
                          DateTime dateTime = DateTime.parse(snapshot
                              .data!.articles![index].publishedAt
                              .toString());
                          return newsBox2(
                            snapshot,
                            index,
                            '',
                            0.329,
                            0.9,
                            context,
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }

  Widget thubmNail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        margin: const EdgeInsets.all(10),
        color: Colors.blue,
        child: const Center(
          child: Text("THUMBNAIL"),
        ),
      ),
    );
  }
}