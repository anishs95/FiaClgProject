import 'package:fia/pages/authentication/widget/fade_animationtest.dart';
import 'package:flutter/material.dart';

class CustomShapeContentWidget extends StatelessWidget {
  const CustomShapeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: 22,
        left: 16,
        right: 16,
        bottom: 64,
      ),
      child: Column(
        children: [
          // Image.asset(
          //   'assets/images/WGALogo.png',
          //   width: 200,
          //   height: 150,
          //   fit: BoxFit.cover,
          // ),
          FadeInAnimation(
            delay: 1,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/appLogo.png"))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Text(
              "Body fitness and workout routines are essential components of a healthy lifestyle, contributing to overall physical well-being. Engaging in regular exercise not only improves strength, endurance, and flexibility but also promotes mental clarity and emotional balance.",
              style: theme.textTheme.caption,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
