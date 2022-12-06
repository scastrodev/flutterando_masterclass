import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isRectangle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: AnimatedAlign(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 800),
          alignment: isRectangle ? Alignment.topCenter : Alignment.bottomRight,
          child: AnimatedContainer(
            height: 60,
            width: isRectangle ? 120 : 60,
            duration: const Duration(milliseconds: 750),
            child: ElevatedButton(
              onPressed: () => setState(() => isRectangle = !isRectangle),
              style: ElevatedButton.styleFrom(
                shape: isRectangle ? null : const StadiumBorder(),
              ),
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
