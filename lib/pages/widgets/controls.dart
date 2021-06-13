import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  const Controls();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.count(
        physics: new NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        padding: EdgeInsets.all(15),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          IconControl('assets/fitness_club.png'),
          IconControl('assets/yoga.png'),
          IconControl('assets/diet_regime.png'),
          IconControl('assets/health_reminders.png'),
          IconControl('assets/nutri_chart.png'),
          IconControl('assets/bmi.png'),
        ],
      ),
    );
  }
}

class IconControl extends StatelessWidget {
  final String image;
  const IconControl(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 5, offset: Offset(5, 5))
          ],
          color: Color(0xFF222325),
          image: DecorationImage(scale: 1.5, image: AssetImage(image)),
          shape: BoxShape.circle),
      child: Container(
          //  height: 180,
          ),
    );
  }
}
