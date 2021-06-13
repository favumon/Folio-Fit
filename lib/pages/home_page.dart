import 'package:flutter/material.dart';
import 'package:folio_fit/pages/widgets/banners.dart';
import 'package:folio_fit/pages/widgets/carousel_banner.dart';
import 'package:folio_fit/pages/widgets/controls.dart';
import 'package:folio_fit/pages/widgets/offers.dart';
import 'package:folio_fit/pages/widgets/start_health_journey.dart';
import 'package:folio_fit/pages/widgets/workout_routines.dart';
import 'package:folio_fit/pages/widgets/yoga_asanas.dart';

class HomePage extends StatelessWidget {
  const HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1818),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        backgroundColor: Color(0xff1B1818),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            // height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xFF323233),
                        filled: true,
                        suffixIcon: Container(
                          height: 20,
                          width: 20,
                          margin:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/avatar.jpeg')),
                              shape: BoxShape.circle),
                          // child: Image.asset('assets/avatar.jpeg')
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(200))),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF323233), shape: BoxShape.circle),
                  child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        // size: 40,
                      ),
                      onPressed: () {}),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CarouselBanner(),
          SizedBox(
            height: 20,
          ),
          Controls(),
          SizedBox(
            height: 20,
          ),
          Banners(),
          SizedBox(
            height: 20,
          ),
          WorkoutRoutines(),
          SizedBox(
            height: 20,
          ),
          YogaAsanas(),
          SizedBox(
            height: 20,
          ),
          Offers(),
          SizedBox(
            height: 20,
          ),
          // StartHealthJourney(),
        ]),
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(0, size.height * 0.8);
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
