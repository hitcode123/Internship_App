import 'package:flutter/material.dart';
import '../config.dart';

import '../Widgets/appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(24, 32, 46, 1),
          leadingWidth: 220,
          toolbarHeight: 62,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 14,
                    child: Image.asset("Asset/pic4.png", height: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          "CURRENT LOCATION",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(186, 126, 151,
                                  161)), //background: rgba(209, 211, 212, 1);
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        // ignore: prefer_const_constructors
                        Row(
                          children: [
                            Text(
                              "15A, James Street",
                              style:
                                  TextStyle(fontFamily: 'Gilroy', fontSize: 13),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 9.0, bottom: 9.0, left: 10.0, right: 10.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Bronze",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 13,
                                color: Colors.yellowAccent),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          "0 Points",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "Asset/pic3.png",
                    height: 38,
                  )
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 210,
                  margin: EdgeInsets.only(top: 16, left: 14, right: 14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(24, 32, 46, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 14.0, left: 14, right: 14),
                          child: Text(
                            "Hello Ratul 👋",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 8.0, left: 14, right: 14, bottom: 8),
                          child: Text(
                            "What you are looking for today",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                            textScaleFactor: 2.3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16.0, right: 16, bottom: 16),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                        height: 30,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurpleAccent,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        )),
                                  ),
                                  labelText: 'Search what you need...',
                                  labelStyle: TextStyle(color: Colors.white24),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.white10)))),
                        )
                      ])),
              Container(
                  height: 200,
                  margin:
                      EdgeInsets.only(top: 25, left: 14, right: 14, bottom: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(24, 32, 46, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 24, left: 16, right: 16),
                      child: Row(children: [
                        Container(
                          height: 200,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text(
                                          "Offer Laundry Service",
                                          style: TextStyle(fontFamily: 'Inter'),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: SizedBox(
                                          width: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 8,
                                          child: Text(
                                            "i",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                    Colors.deepOrange.shade200),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Get 25%",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                    ),
                                    textScaleFactor: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 8),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 8),
                                      width: 140,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(251, 228, 149, 11),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Grab the offer",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white54,
                                            )
                                          ]),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Container(
                          height: 200,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text(
                                          "Offer Laundry Service",
                                          style: TextStyle(fontFamily: 'Inter'),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: SizedBox(
                                          width: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 8,
                                          child: Text(
                                            "i",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                    Colors.deepOrange.shade200),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Get 25%",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                    ),
                                    textScaleFactor: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 8),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 8),
                                      width: 140,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(251, 228, 149, 11),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Grab the offer",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white54,
                                            )
                                          ]),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ]),
                    ),
                  )),
              Container(
                height: 133,
                margin: EdgeInsets.only(top: 5, left: 14, right: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(24, 32, 46, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  child: Image.asset(
                                    'Asset/pic7.png',
                                    height: 35,
                                  ),
                                  backgroundColor: Colors.orange[200],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Dry Wash",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(children: [
                                CircleAvatar(
                                    radius: 35,
                                    child: Image.asset('Asset/pic5.png',
                                        height: 37),
                                    backgroundColor: Colors.purple[200]),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Iron",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500),
                                ),
                              ])),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 35,
                                    child: Image.asset(
                                      'Asset/pic6.png',
                                      height: 35,
                                    ),
                                    backgroundColor:
                                        Colors.deepOrange.shade200),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Wash",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.white54,
                                  // ignore: prefer_const_constructors
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Colors.black54,
                                    // ignore: prefer_const_constructors
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 35,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ])),
              ),
              Container(
                  height: 260,
                  margin: EdgeInsets.only(top: 16, left: 14, right: 14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(24, 32, 46, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Image.asset('Asset/pic9.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Nearest Laundry",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Inter'),
                                textScaleFactor: 1.4,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50),
                                height: 35,
                                width: 90,
                                padding: const EdgeInsets.only(
                                    top: 7, bottom: 7, right: 7, left: 7),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.white38,
                                    )),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "See All",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontFamily: 'Inter',
                                            fontSize: 15),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                        child: Column(
                                      children: [
                                        Container(
                                            height: 140,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.asset(
                                                  'Asset/pic8.png',
                                                  fit: BoxFit.fill,
                                                ))),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          "Nearest Laundry",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter'),
                                        )
                                      ],
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                        child: Column(
                                      children: [
                                        Container(
                                            height: 140,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  'Asset/pic10.png',
                                                  fit: BoxFit.fill,
                                                ))),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          "Nearest Laundry",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter'),
                                        )
                                      ],
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                        child: Column(
                                      children: [
                                        // ignore: sized_box_for_whitespace
                                        Container(
                                            height: 140,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                child: Image.asset(
                                                  'Asset/pic10.png',
                                                  fit: BoxFit.fill,
                                                ))),
                                        // ignore: prefer_const_constructors
                                        SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          "Nearest Laundry",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter'),
                                        )
                                      ],
                                    )),
                                  ),
                                ],
                              )),
                        ),
                      ])),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(24, 32, 46, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Image.asset("Asset/pic11.png")),
                    Expanded(flex: 1, child: Image.asset("Asset/pic12.png")),
                    Expanded(flex: 1, child: Image.asset("Asset/pic13.png")),
                    Expanded(flex: 1, child: Image.asset("Asset/pic14.png")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
