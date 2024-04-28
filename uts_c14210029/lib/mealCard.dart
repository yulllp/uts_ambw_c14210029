import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  String img;
  String restoName;
  String address;
  String type;

  MealCard({
    super.key,
    required this.img,
    required this.restoName,
    required this.address,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(4, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0)),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restoName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  address,
                  style: const TextStyle(fontSize: 16, color: Colors.grey
                      // color: Colors.grey,
                      ),
                ),
                Text(
                  type,
                  style: const TextStyle(fontSize: 12, color: Colors.grey
                      // color: Colors.grey,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
