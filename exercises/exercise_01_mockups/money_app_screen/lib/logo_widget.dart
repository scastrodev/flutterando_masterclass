import 'package:flutter/material.dart';
import 'package:money_app_screen/constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const spacing = 8.0;
    final screenW = MediaQuery.of(context).size.width;
    final ellipticalRadius = BorderRadius.only(bottomLeft: Radius.elliptical(screenW, screenW));

    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          margin: const EdgeInsets.all(spacing),
          decoration: const BoxDecoration(shape: BoxShape.circle, color: primary),
        ),
        Container(
          margin: const EdgeInsets.only(left: spacing, top: spacing, right: spacing),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.only(topRight: Radius.elliptical(screenW, screenW)),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(spacing),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: ellipticalRadius,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: spacing, bottom: spacing, right: spacing),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: ellipticalRadius,
          ),
        ),
      ],
    );
  }
}
