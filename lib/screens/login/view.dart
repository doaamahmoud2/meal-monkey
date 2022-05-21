import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(
              top: 60, start: 34, end: 34, bottom: 25),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text("login",
                      style:
                          TextStyle(fontSize: 30.sp, color: Color(0xff4A4B4D))),
                ),
                SizedBox(height: 12),
                Center(
                  child: Text("Add your details to login",
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xff7C7D7E))),
                ),
                SizedBox(height: 36),
                TextFormField(
                  decoration: InputDecoration(hintText: "Your Email"),
                ),
                SizedBox(height: 28),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                SizedBox(height: 28),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Color(0xffFC6011)),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 16.sp, color: Color(0xffFFFFFF)),
                    )),
                SizedBox(height: 24),
                Center(
                  child: Text("Forgot your password?",
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xff7C7D7E))),
                ),
                SizedBox(height: 49),
                Center(
                  child: Text("or Login With",
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xff7C7D7E))),
                ),
                SizedBox(height: 27),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Color(0xff367FC0)),
                  icon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 32),
                      child: Image.asset(
                        "assets/icons/fb.png",
                        height: 15.h,
                        width: 7.w,
                      )),
                  label: const Text("Login with Facebook"),
                ),
                const SizedBox(height: 28),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Color(0xffDD4B39)),
                  icon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 32),
                      child: Image.asset(
                        "assets/icons/google.png",
                        height: 12.h,
                        width: 19.w,
                      )),
                  label: const Text("Login with Google"),
                ),
                const SizedBox(height: 83),
                Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Don't have an Account?",
                          style: TextStyle(color: Color(0xff707070))),
                      WidgetSpan(
                          child: InkWell(
                              onTap: () {},
                              child: Text("Sign Up",
                                  style: TextStyle(color: Color(0xffFC6011)))))
                    ]),
                    style: TextStyle(fontSize: 14.sp),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
