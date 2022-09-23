import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:finalproject/homepageview/locations.dart';
import 'package:finalproject/json/places.dart';

import 'giftpage.dart';


class ToursScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<ToursScreen> {

  Places?myplace;
  bool isLoading=false;
  dynamic placeJson;
  String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM4MDE3MjMsIm5iZiI6MTY2MzgwMTcyMywianRpIjoiOFhEc1M1T3h5dG5EQmZLTiIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rX3s6YRH7JVKt8CbHBBr1pXwfm1SA7yS7BeHTIQU0oc";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
      Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("assets/images/toursmenu.png"),
          ),

        ],

      ),
    ),
    Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
    child: Row(
    children: [
    Text( "Popular Destination",style: TextStyle(color: Color(0xff4458DB),
    fontWeight: FontWeight.w400,
    fontSize: 20),
    )
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Row(
    children: [
    Text("10 Tours Avialable",style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400),)
    ],
    ),
    ),
    Container(
    height: 120,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    Image.asset("assets/images/paris.png"),
    Image.asset("assets/images/india2.png"),
    Image.asset("assets/images/newyork.png"),
    Image.asset("assets/images/losangles.png"),
    ],
    ),
    ),
    Row(
    children: [
    Stack(
    alignment: AlignmentDirectional.bottomCenter,
    children: [
    Image.asset("assets/images/Offer.png",width: 390,),
    Container(
    height: 80,
    width: 390,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    Image.asset("assets/images/offer1.png"),
    Image.asset("assets/images/offer2.png"),
    Image.asset("assets/images/offer3.png"),
    ],
    ),
    ),],
    )
    ],
    ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
              child: Row(
                children: [
                  Text( "Discover New Places",style: TextStyle(color: Color(0xff4458DB),
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              height: 330,

              child:
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: myplace?.data?.data?.length,
                itemBuilder: (context, index) {
                  InnerData? jsonitem=myplace?.data?.data?[index];
                  return Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.network(jsonitem!.image??""),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),





          ],
      ),
    );
  }
  Future getplist() async {
    setState(() {
      isLoading = true;
    });

    Response response =
    await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
      "Authorization": "Bearer $access_token",
    });

    placeJson = jsonDecode(response.body);

    setState(() {
      myplace = Places.fromJson(placeJson);
      if (response.statusCode == 200) {
        myplace = Places.fromJson(placeJson);
        print(myplace);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Gifts()));
      } else {
        print(placeJson["message"]);
      }
    });

    setState(() {
      isLoading = false;
    });
  }
}

class Places {
  get data => null;

  static Places? fromJson(placeJson) {}
}