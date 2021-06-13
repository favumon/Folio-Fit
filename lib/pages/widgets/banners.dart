import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  const Banners();

  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  var banners = [
    'https://i.ibb.co/tXFdzcW/Screenshot-2021-06-13-at-8-21-55-PM.png',
    'https://i.ibb.co/tXFdzcW/Screenshot-2021-06-13-at-8-21-55-PM.png',
    'https://i.ibb.co/tXFdzcW/Screenshot-2021-06-13-at-8-21-55-PM.png',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          enableInfiniteScroll: false,
          viewportFraction: 0.8,
          initialPage: 0,
          height: 130.0),
      items: banners.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(i)),
                  borderRadius: BorderRadius.circular(30)),
            );
          },
        );
      }).toList(),
    );
  }
}
