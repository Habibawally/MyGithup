//->FINAL_PROGRAMS
import 'package:flutter/material.dart';

import '../Folder_1/constant.dart';
import 'package:lastone/programs.dart';

class question extends StatefulWidget {
  void SelectAnswer() {
    print("Answer");
  }

  const question({super.key});

  @override
  State<question> createState() => questionState();
}

class questionState extends State<question> {
  bool isSeaSelected = false;
  bool isCitySelected = false;
  bool isCountrySideSelected = false;
  bool isArculogicalSelected = false;
  bool isSittingSelected = false;
  bool isFamlys1Selected = false;
  bool isArabicSelected = false;
  bool isChineseSelceted = false;
  bool isItalianSelected = false;
  bool isIndianSelected = false;
  bool isHikingSelected = false;
  bool isSwimmingSelected = false;
  bool isShoppingSelected = false;
  bool isMeditationSelected = false;
  bool isAdventureSelected = false;
  bool isinterestingSelected = false;
  bool isMuesumSelected = false;
  bool isaloneSelected = false;
  bool isangrySelected = false;
  bool isNotcareSelected = false;
  bool isCancetSelected = false;
  bool isPartnerSelected = false;
  bool isFamlysSelected = false;
  bool isFriendsSelected = false;
  bool isAlone3Selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            "images/Recognition101.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "What kind of places do you prefer ?",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/city.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isCitySelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isCitySelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    'city',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            )
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/sea.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isSeaSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isSeaSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    'Sea',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/country_side.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isCountrySideSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isCountrySideSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    'Country Side',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/archeology.jpeg.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isArculogicalSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isArculogicalSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    'Archieological Areas',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(width: 19.0, height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "What type of food do you prefer ?",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  SizedBox(width: 19.0, height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/Arabic.webp'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isArabicSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isArabicSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Arabic",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                'images/chinese.webp',
                              ),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isChineseSelceted,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isChineseSelceted =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    'chinese',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/Italian.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isItalianSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isItalianSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Italian",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/india.png'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isIndianSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isIndianSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Indian",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(width: 19.0, height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(40),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "What are your favourite activities?",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image:
                                  AssetImage('images/sitting with friends.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    top: 28,
                                    right: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isSittingSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isSittingSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          Expanded(
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(90),
                                                child: Container(
                                                  decoration:
                                                      BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 4,
                                                      blurRadius: 6,
                                                      offset: Offset(0, 3),
                                                    )
                                                  ]),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                      "Sitting with friends in a coffee shop",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/hiking.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isHikingSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isHikingSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "hiking in the woods ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/swimming.png'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isSwimmingSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isSwimmingSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Swimming ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/shopping.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isShoppingSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isShoppingSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Shopping",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(width: 19.0, height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "What is your favourite part of traveling?",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/meditation.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isMuesumSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isMuesumSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Meditation",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/Adventure.webp'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isAdventureSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isAdventureSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Adventure",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/interesting.png'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isinterestingSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isinterestingSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "knowing new people",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/Discover history.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isMuesumSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isMuesumSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Discover the history",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(width: 19.0, height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "if the transportation breaks down in the middle of the road ,what will you do ?",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/angry.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 70.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isaloneSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isaloneSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(0.0),
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    "get angry & out of mode ",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 6.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/solve problem.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 50.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 20,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          /// begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(0.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isangrySelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isangrySelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    " solve it",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/Dont care.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 25,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(0.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isNotcareSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isNotcareSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    ' not care',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/cancel trip.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.8),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isCancetSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isCancetSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    'you will cancel the trip',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 7.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(width: 19.0, height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "What do you prefer to travel with ?",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/partner.jpg'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isPartnerSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isPartnerSelected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Partner",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/family.webp'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isFamlysSelected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isFamlysSelected = value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Family",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Ink.image(
                              image: AssetImage('images/friends.png'),
                              fit: BoxFit.cover,
                              width: 140.0,
                              height: 140.0,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Do something when the image is tapped
                                    },
                                    //splashColor: Colors.blue.withOpacity(0.5),
                                    radius: 90.0,
                                    child: Container(),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(0.0),
                                      margin: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color.fromARGB(
                                                        255, 224, 157, 209),
                                              ),
                                              child: SizedBox(
                                                height: 10,
                                                width: 10,
                                                child: Checkbox(
                                                  value: isFamlys1Selected,
                                                  checkColor: Colors.black,
                                                  activeColor: Colors.blueGrey,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isFamlys1Selected =
                                                          value!;
                                                    });
                                                  },
                                                ),
                                              )),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: Container(
                                                decoration:
                                                    BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 4,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 3),
                                                  )
                                                ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  child: Text(
                                                    "Friends",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.0,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                              width: 8,
                            ),
                          ],
                        ),
                      )),
                      Container(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ink.image(
                                image: AssetImage('images/alone.jpg'),
                                fit: BoxFit.cover,
                                width: 140.0,
                                height: 140.0,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Do something when the image is tapped
                                      },
                                      //splashColor: Colors.blue.withOpacity(0.5),
                                      radius: 90.0,
                                      child: Container(),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black.withOpacity(0),
                                            ],
                                          ),
                                        ),
                                        padding: EdgeInsets.all(0.0),
                                        margin: EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [
                                            Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      Color.fromARGB(
                                                          255, 224, 157, 209),
                                                ),
                                                child: SizedBox(
                                                  height: 10,
                                                  width: 10,
                                                  child: Checkbox(
                                                    value: isAlone3Selected,
                                                    checkColor: Colors.black,
                                                    activeColor:
                                                        Colors.blueGrey,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        isAlone3Selected =
                                                            value!;
                                                      });
                                                    },
                                                  ),
                                                )),
                                            ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(90),
                                                child: Container(
                                                  decoration:
                                                      BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 4,
                                                      blurRadius: 6,
                                                      offset: Offset(0, 3),
                                                    )
                                                  ]),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            9.0),
                                                    child: Text(
                                                      "Alone",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 19.0, height: 20.0),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 250,
                    //button to go to next page
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => programs()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
