import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class FlareDemo extends StatefulWidget {
  @override
  _FlareDemoState createState() => _FlareDemoState();
}

class _FlareDemoState extends State<FlareDemo> {
  @override
  Widget build(BuildContext context) {
    var animationWidth = 270.0;
    var animationHeight = 240.0;

    var animationWidthThirds = animationWidth / 3;
    var halfAnimationHeight = animationHeight / 2;

    var activeAreas = [
      ActiveArea(
        area: Rect.fromCircle(center: Offset(animationWidth / 2, animationHeight * 0.7), radius: animationWidth / 6),
        debugArea: true,
        animationsToCycle: ["activate", "deactivate"],
        onAreaTapped: () {
          print("Toggle animation!");
        },
      ),
      ActiveArea(
        area: Rect.fromLTWH(animationWidthThirds / 2, halfAnimationHeight / 4, animationWidthThirds / 2, halfAnimationHeight * 3 / 4),
        debugArea: true,
        animationName: "camera_tapped",
        guardComingFrom: ["deactivate"],
      ),
      ActiveArea(
        area: Rect.fromLTWH(animationWidthThirds, halfAnimationHeight / 4, animationWidthThirds, halfAnimationHeight * 3 / 4),
        debugArea: true,
        animationName: "pulse_tapped",
        guardComingFrom: ["deactivate"],
      ),
      ActiveArea(
        area: Rect.fromLTWH(animationWidthThirds * 2, halfAnimationHeight / 4, animationWidthThirds / 2, halfAnimationHeight * 3 / 4),
        debugArea: true,
        animationName: "image_tapped",
        guardComingFrom: ["deactivate"],
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 18, 222),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SmartFlareActor(
          width: animationWidth,
          height: animationHeight,
          filename: "assets/button-animation.flr",
          startingAnimation: "deactivate",
          activeAreas: activeAreas,
        ),
      ),
    );
  }
}
