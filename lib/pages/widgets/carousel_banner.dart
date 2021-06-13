import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class CarouselBanner extends StatefulWidget {
  CarouselBanner();

  @override
  _CarouselBannerState createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  var banners = [];

  @override
  void initState() {
    super.initState();
    loadBanners();
  }

  var _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: banners.map((url) {
              int index = banners.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void loadBanners() {
    // final FirebaseApp app = FirebaseDatabase.instance
    final DatabaseReference db = FirebaseDatabase.instance.reference();
    db.child('banner1').once().then((result) {
      var map = result.value as Map;
      map.forEach((key, value) {
        banners.add(value);
      });
      setState(() {});
    });
  }
}
