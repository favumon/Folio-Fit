import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class YogaAsanas extends StatefulWidget {
  YogaAsanas();

  @override
  _YogaAsanasState createState() => _YogaAsanasState();
}

class _YogaAsanasState extends State<YogaAsanas> {
  var routines = [
    'https://i.ibb.co/G5crsrR/Screenshot-2021-06-13-at-8-41-36-PM.png',
    'https://i.ibb.co/G5crsrR/Screenshot-2021-06-13-at-8-41-36-PM.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          //, viewportFraction: 0.6, height: 100.0
        ),
        items: routines.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(i)),
                    borderRadius: BorderRadius.circular(30)),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
