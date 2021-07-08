import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'journey_model.dart';

Widget notificationDate() {
  return Container(
    padding: EdgeInsets.only(bottom: 10, left: 5),
    child: Text(
      "WEDNESDAY, NOVEMBER 8 2021 10:00 AM",
      style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 1;
  List _children = [
    MyHome(),
    MyInfo(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCT JOURNEY"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.sort),
          ),
        ],
        elevation: 0,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: getCurrentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "Info",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Profile",
            ),
          ]),
    );
  }

  void getCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class MyInfo extends StatefulWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Colors.grey[700],
                border: Border(
                  bottom: BorderSide(color: Colors.teal, width: 6),
                )),
            child: Center(
              child: Text(
                "ENVIRONMENTAL ImpACT".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.blue)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pin_drop),
                      Text(
                        "5.91",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "METER 2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Container(
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 5, color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                        ),
                        Text(
                          "0.84",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "KG CO2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: RichText(
              text: TextSpan(
                text: "This is the journey of",
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text: " Belief's do not change facts".toUpperCase(),
                      style: TextStyle(color: Colors.teal)),
                  TextSpan(
                    text: "".toUpperCase(),
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                  TextSpan(
                    text: " as verified by the blockchain ID:".toUpperCase(),
                  ),
                  TextSpan(
                      text: " 0x123dkd....".toUpperCase(),
                      style: TextStyle(color: Colors.teal)),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "journey".toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                notificationDate(),
                ListView.builder(
                  itemCount: journeyModelList.length,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    ProductJourneyWhiteCard entity = journeyModelList[index];

                    if (entity.status == 1) {
                      Color? iconColor;
                      if (journeyModelList[index].verificationDetails == "" ||
                          journeyModelList[index].verificationDetails == null) {
                        journeyModelList[index].verificationDetails =
                            "UNVERIFIED";
                        iconColor = Colors.grey;
                      } else {
                        iconColor = Colors.teal;
                      }
                      return Card(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              child: IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              journeyModelList[index]
                                                      .cardTitle ??
                                                  "",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              journeyModelList[index]
                                                      .cardSubtitle ??
                                                  "",
                                              style: TextStyle(
                                                  color: Colors.teal,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              journeyModelList[index]
                                                      .cardLocation ??
                                                  "",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                                color: Colors.grey, width: 1),
                                            left: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              color: Colors.blue,
                                              padding: EdgeInsets.all(8),
                                              child: Center(
                                                child: Text(
                                                  "Water",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.pin_drop,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    journeyModelList[index]
                                                            .waterParam ??
                                                        "",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              color: Colors.black,
                                              padding: EdgeInsets.all(8),
                                              child: Center(
                                                child: Text(
                                                  "CO2",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.cloud,
                                                    color: Colors.black,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    journeyModelList[index]
                                                            .carbonParam ??
                                                        "",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 1))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(journeyModelList[index]
                                              .verificationDetails ??
                                          ""),
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: iconColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else if (journeyModelList[index].status == 2 ||
                        journeyModelList[index].status == 3 ||
                        journeyModelList[index].status == 4) {
                      Color? cardColor;
                      Color? iconColor;

                      String? isRegistered;
                      if (journeyModelList[index].status == 3) {
                        if (journeyModelList[index].verificationDetails == "" ||
                            journeyModelList[index].verificationDetails ==
                                null) {
                          isRegistered = "UNVERIFIED";
                        } else
                          isRegistered =
                              journeyModelList[index].verificationDetails;
                        cardColor = Colors.grey;
                        iconColor = Colors.black;
                      } else if (journeyModelList[index].status == 2) {
                        if (journeyModelList[index].registrationDetails == "" ||
                            journeyModelList[index].registrationDetails ==
                                null) {
                          isRegistered = "UNREGISTERED";
                        } else
                          isRegistered =
                              journeyModelList[index].registrationDetails;
                        cardColor = Colors.orange;
                        iconColor = Colors.black;
                      } else if (journeyModelList[index].status == 4) {
                        cardColor = Colors.yellow[700];
                        iconColor = Colors.red;
                        isRegistered =
                            journeyModelList[index].verificationDetails ?? "";
                      }

                      return Card(
                        color: cardColor,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          journeyModelList[index].cardTitle ??
                                              "",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: journeyModelList[index]
                                                    .companyDetails ??
                                                "",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Text(
                                          journeyModelList[index]
                                                  .cardLocation ??
                                              "",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      journeyModelList[index].cardIcon,
                                      size: 50,
                                      color: iconColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border(
                                  top:
                                      BorderSide(color: Colors.black, width: 1),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      "$isRegistered",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Container();
                  },
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("HOME SCREEN DISPLAY"),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Profile Screen Display".toUpperCase()),
      ),
    );
  }
}
