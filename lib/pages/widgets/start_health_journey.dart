import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StartHealthJourney extends StatefulWidget {
  StartHealthJourney();

  @override
  _StartHealthJourneyState createState() => _StartHealthJourneyState();
}

class _StartHealthJourneyState extends State<StartHealthJourney> {
  var routines = [
    'https://i.ibb.co/G5crsrR/Screenshot-2021-06-13-at-8-41-36-PM.png',
    'https://i.ibb.co/G5crsrR/Screenshot-2021-06-13-at-8-41-36-PM.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(enableInfiniteScroll: false, height: 100.0),
        items: routines.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/avatar.jpeg')),
                          shape: BoxShape.circle),
                      // child: Image.asset('assets/avatar.jpeg')
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Aswin Vinod'),
                              Text('posted 20 Dec 2020'),
                            ],
                          ),
                        ),
                        Text(
                            'Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumvLorem ipsum'),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
