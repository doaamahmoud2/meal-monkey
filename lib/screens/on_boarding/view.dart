import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey2/screens/on_boarding/controller.dart';
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Container(
  width: double.infinity,
  child: ListView(
  children: [
  SizedBox(height: 110),
  Container(
  height: 294.h,
  child: PageView(
  onPageChanged: (value) {
 controller.current = value;
  setState(() {});
  },
  children: List.generate(
  controller.images.length,
  (index) => Image.asset(
  controller.images[controller.current],
  width: 225.w,
  ),
  ),
  ),
  ),
  SizedBox(height: 70),
  Center(
  child: Text(controller.titles[controller.current],
  style: TextStyle(fontSize: 28.sp, color: Color(0xff4A4B4D)))),
  SizedBox(height: 33),
  Text(controller.hints[controller.current],
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 13.sp, color: Color(0xff47C7D7E))),
  SizedBox(height: 20),
  Padding(
  padding: const EdgeInsets.all(34),
  child: ElevatedButton(
  onPressed: () {},
  child: Text(
  "Next",
  style: TextStyle(fontSize: 16.sp, color: Color(0xffFFFFFF)),
  )),
  ),
  ],
  ),
 ));
  }
}