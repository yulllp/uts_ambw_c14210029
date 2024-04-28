import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_c14210029/allCard.dart';


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
var _address = [
  "Jl. Lontar block A",
  "PTC lt 3",
  "122 Queen Street"
];
var _type = [
  "Martabak, Indonesian",
  "Soup, Chinese",
  "Fried Chicken, American"
];

class ListMost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.amber,)
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _img.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AllCard(
              img: _img[index],
              restoName: _restoName[index],
              address: _address[index],
              type: _type[index],
            ),
          );
        },
      ),
    );
  }
}
