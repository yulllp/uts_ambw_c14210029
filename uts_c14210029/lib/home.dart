// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_c14210029/listMeal.dart';
import 'package:uts_c14210029/listMost.dart';
import 'package:uts_c14210029/mealCard.dart';
import 'package:uts_c14210029/mostCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var _img = [
  "assets/martabak.jpg",
  "assets/xo.jpg",
  "assets/kfc.jpg",
];

var _restoName = [
  "Martabak 65",
  "XO suki",
  "KFC Broadway",
];
var _address = ["Jl. Lontar block A", "PTC, lt 3", "122 Queen Street"];

var _type = [
  "Martabak, Indonesian",
  "Soup, Chinese",
  "Fried Chicken, American"
];

var _img2 = [
  "assets/zangrandi.jpg",
  "assets/carls.jpg",
  "assets/salad.jpg",
];

var _restoName2 = [
  "Zangrandi Grande",
  "Carls Jr.",
  "Crunchaus",
];

var _address2 = ["G-WALK Citraland", "Jl. Jonosewojo", "Pakuwon Mall, lt. G"];

var _type2 = ["Ice Cream, Indonesian", "Burger, American", "Salad, Indonesian"];

class _MyHomePageState extends State<MyHomePage> {
  int curInd = 0;
  int imgInd = 0;

  @override
  Widget build(BuildContext context) {

    var bar = [
      AppBar(
        title: const Text(
          "Sydney CBD",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Search for restaurants...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
      AppBar(
        title: const Text(
          "Discovery",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
      ),
      AppBar(
        title: const Text(
          "Bookmark",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
      ),
      AppBar(
        title: const Text(
          "Top Foodie",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
      ),
      AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
        ),
      ),
    ];

    var screen = [
      (BuildContext context) => SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Image.asset("assets/china.webp"),
                            const Positioned(
                                left: 10,
                                bottom: 30,
                                child: Text(
                                  "China Style",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            const Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  "12 Places",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset("assets/australia.webp"),
                            const Positioned(
                                left: 10,
                                bottom: 30,
                                child: Text(
                                  "Australian Style",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            const Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  "15 Places",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset("assets/american.jpg"),
                            const Positioned(
                                left: 10,
                                bottom: 30,
                                child: Text(
                                  "American Style",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            const Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  "9 Places",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset("assets/indo.jpg"),
                            const Positioned(
                                left: 10,
                                bottom: 30,
                                child: Text(
                                  "Indonesian Style",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            const Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  "11 Places",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.width * (9 / 16),
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        initialPage: 0,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: false,
                        scrollDirection: Axis.horizontal,
                        pauseAutoPlayOnTouch: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            imgInd = index;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                              width: 10,
                              height:10,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 5.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: imgInd == i
                                      ? Colors.white
                                      : Colors.grey),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the other page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListMost()),
                          );
                        },
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 85, 179, 255)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 0, left: 2, right: 2),
                  child: Container(
                    height: 210,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _img.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MostCard(
                            img: _img[index],
                            restoName: _restoName[index],
                            address: _address[index],
                            type: _type[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Meal Deals",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the other page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListMeal()),
                          );
                        },
                        child: Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 85, 179, 255)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 0, left: 2, right: 2),
                  child: Container(
                    height: 210,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _img.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MealCard(
                            img: _img2[index],
                            restoName: _restoName2[index],
                            address: _address2[index],
                            type: _type2[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
      (BuildContext context) => Center(child: Text("Discovery Page")),
      (BuildContext context) => Center(child: Text("Bookmark Page")),
      (BuildContext context) => Center(child: Text("Top Foodie Page")),
      (BuildContext context) => Center(child: Text("Profile Page")),
    ];

    return Scaffold(
        appBar: bar[curInd],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curInd,
          onTap: (int value) {
            setState(() {
              curInd = value;
              imgInd = 0;
            });
          },
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: "Discovery",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined),
              label: "Top Foodie",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Profile",
            ),
          ],
        ),
        body: screen[curInd](context));
  }
}
