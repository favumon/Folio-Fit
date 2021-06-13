import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WorkoutRoutines extends StatefulWidget {
  WorkoutRoutines();

  @override
  _WorkoutRoutinesState createState() => _WorkoutRoutinesState();
}

class _WorkoutRoutinesState extends State<WorkoutRoutines> {
  var routines = [
    'https://i.ibb.co/z2yFXHD/Screenshot-2021-06-13-at-8-32-24-PM.png',
    'https://i.ibb.co/pz0RKJV/Screenshot-2021-06-13-at-8-32-32-PM.png',
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
                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(i)),
                    borderRadius: BorderRadius.circular(30)),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
