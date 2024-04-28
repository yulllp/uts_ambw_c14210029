import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_c14210029/allCard.dart';

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

var _address2 = [
  "G-WALK Citraland",
  "Jl. Jonosewojo",
  "Pakuwon Mall, lt. G"
];

var _type2 = [
  "Ice Cream, Indonesian",
  "Burger, American",
  "Salad, Indonesian"
];

class ListMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.amber,)
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _img2.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AllCard(
              img: _img2[index],
              restoName: _restoName2[index],
              address: _address2[index],
              type: _type2[index],
            ),
          );
        },
      ),
    );
  }
}