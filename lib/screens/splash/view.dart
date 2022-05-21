import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/background/bg.png"))),
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: 218,
            height: 185,
          ),
        )),
      );
  }
}
