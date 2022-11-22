import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key, required this.label, required this.iconName});

  final String label;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        fixedSize: const Size(350, 50),
        side: const BorderSide(width: 2, color: Colors.white),
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 1,
              child: SvgPicture.asset(
                'assets/$iconName.svg',
                width: 18,
                color: Colors.white,
              ),
            ),
            Text(
              label.toUpperCase(),
              style: const TextStyle(letterSpacing: 2, color: Colors.white, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
