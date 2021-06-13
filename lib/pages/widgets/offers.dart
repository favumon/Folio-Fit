import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers();

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  var banners = [
    'https://i.ibb.co/6wqryDc/Screenshot-2021-06-13-at-9-32-54-PM.png',
    'https://i.ibb.co/zrZjMZP/Screenshot-2021-06-13-at-9-33-11-PM.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          //, viewportFraction: 0.6, height: 100.0
        ),
        items: banners.map((i) {
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
