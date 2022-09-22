import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../custom_color/customcolor.dart';

class Tours extends StatefulWidget {
  const Tours({Key? key}) : super(key: key);

  @override
  State<Tours> createState() => _ToursState();
}

class _ToursState extends State<Tours> {
  dynamic json;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/images/toursmenu.png"),
                SizedBox(
                  width: 0,
                ),



              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Popular Destination",
                style: TextStyle(
                  color: CustomColor.darkmov,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "10 Tours Analiable",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 700,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/paris.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/india2.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/newyork.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/losangles.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 100),

                          child: Row(
                            children: [ Card( child: SizedBox(
                              width: .1,
                            )),
                             Card(child: Image.asset("assets/images/Offer.png")),


                            ],
                          ),
                        ),
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 360,
                                      margin:
                                      EdgeInsets.only(top: 95, bottom: 180),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: Text(
                                              "Holidays",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Say yes to iconic snow catamount,",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Hillsdale,New York",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Text(
                                                  "Book your holiday package today",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 11),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[500],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 360,
                                      margin:
                                      EdgeInsets.only(top: 95, bottom: 180),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: Text(
                                              "Holidays",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Say yes to iconic snow catamount,",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Hillsdale,New York",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Text(
                                                  "Book your holiday package today",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 11),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[500],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 360,
                                      margin:
                                      EdgeInsets.only(top: 95, bottom: 180),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: Text(
                                              "Holidays",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Say yes to iconic snow catamount,",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Hillsdale,New York",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Text(
                                                  "Book your holiday package today",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 11),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[500],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            })
                      ],
                    ),
                  ),

                ],

              ),
            )
          ],

        ),
      ),
    );
  }
  Future getlis() async{
    Response response=await get(Uri.parse(" http://alcaptin.com/api/places"));
    setState(() {
      json=jsonDecode(response.body);
      print(json);
    });
    print("Api Response${response.body}");
  }
}