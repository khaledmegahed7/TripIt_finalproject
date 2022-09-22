import 'package:flutter/material.dart';

import 'giftpage.dart';

import 'profile.dart';
class ToursScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<ToursScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(child: Image.asset("assets/images/toursmenu.png")),



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
                  ),

                ],
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

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gifts()));

                },
                    child: Container(child: Image.asset("assets/images/eiffeltower.png"))),
                Image.asset("assets/images/parrotcay.png"),
                Image.asset("assets/images/notredam.png"),
              ],
            ),
          ),




        ],
      ),
    );
  }

}