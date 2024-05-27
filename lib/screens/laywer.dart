// import 'package:cybersecure/document.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/navbar.dart';

class lawyer extends StatefulWidget {
  const lawyer({super.key});

  @override
  State<lawyer> createState() => _lawyerState();
}

class _lawyerState extends State<lawyer> {
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xfff1f5ff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
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
                              builder: (context) => const NavBar()));
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Lawyers',
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
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/laywer.png',
                          scale: 3.5,
                        ),

                        // SizedBox(width: swidth*0.17,),

                        Container(
                          width: swidth * 0.59,
                          child: Column(
                            children: [
                              Text(
                                'Madhav Rastogi',
                                style: TextStyle(
                                    color: Color(0xff046200),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),

                              SizedBox(
                                height: sheight * 0.01,
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/location.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Ahemdabad , Gujarat',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/briefcase.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Text(
                                      '15 years of experience',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/comment.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Hindi, English, Gujarati',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Skills &\nLearnings:',
                          style: TextStyle(
                              color: Color(0xff046200),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Civil Matters',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Property & Real Estates',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                '+ 2 more',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sheight * 0.04,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/laywer.png',
                          scale: 3.5,
                        ),

                        // SizedBox(width: swidth*0.17,),

                        Container(
                          width: swidth * 0.59,
                          child: Column(
                            children: [
                              Text(
                                'Madhav Rastogi',
                                style: TextStyle(
                                    color: Color(0xff046200),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),

                              SizedBox(
                                height: sheight * 0.01,
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/location.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Ahemdabad , Gujarat',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/briefcase.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Text(
                                      '15 years of experience',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/comment.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Hindi, English, Gujarati',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Skills &\nLearnings:',
                          style: TextStyle(
                              color: Color(0xff046200),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Civil Matters',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Property & Real Estates',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                '+ 2 more',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sheight * 0.04,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/laywer.png',
                          scale: 3.5,
                        ),

                        // SizedBox(width: swidth*0.17,),

                        Container(
                          width: swidth * 0.59,
                          child: Column(
                            children: [
                              Text(
                                'Madhav Rastogi',
                                style: TextStyle(
                                    color: Color(0xff046200),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),

                              SizedBox(
                                height: sheight * 0.01,
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/location.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Ahemdabad , Gujarat',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/briefcase.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Text(
                                      '15 years of experience',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/comment.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Hindi, English, Gujarati',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Skills &\nLearnings:',
                          style: TextStyle(
                              color: Color(0xff046200),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Civil Matters',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Property & Real Estates',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                '+ 2 more',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sheight * 0.04,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/laywer.png',
                          scale: 3.5,
                        ),

                        // SizedBox(width: swidth*0.17,),

                        Container(
                          width: swidth * 0.59,
                          child: Column(
                            children: [
                              Text(
                                'Madhav Rastogi',
                                style: TextStyle(
                                    color: Color(0xff046200),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),

                              SizedBox(
                                height: sheight * 0.01,
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/location.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Ahemdabad , Gujarat',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/briefcase.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Text(
                                      '15 years of experience',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),

                              // SizedBox(height: sheight*0.01,),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: swidth * 0.02,
                                    ),
                                    Image.asset(
                                      'assets/comment.png',
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: swidth * 0.025,
                                    ),
                                    Text(
                                      'Hindi, English, Gujarati',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    )
                                  ]),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Skills &\nLearnings:',
                          style: TextStyle(
                              color: Color(0xff046200),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Civil Matters',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Property & Real Estates',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: swidth*0.01,),

                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                '+ 2 more',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
// isme saari spacing sizedbox se ki hai lkin utility mai error aa rhi hai