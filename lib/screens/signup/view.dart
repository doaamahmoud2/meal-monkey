import 'dart:html';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey2/generated/locale_keys.g.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: EdgeInsetsDirectional.only(
                    top: 60, start: 34, end: 34, bottom: 25),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: (){
                              context.setLocale(context.locale.languageCode =="ar"
                                  ? const Locale("en")
                                  : const Locale("ar"));
                            },

                      child:Center(
                        child: Text(LocaleKeys.signUp.tr(),
                            style: TextStyle(
                                fontSize: 30.sp, color: Color(0xff4A4B4D))),
                      ) ),
                      SizedBox(height: 12),
                      Center(
                        child: Text(LocaleKeys.addYourDetailsToSignUp.tr(),
                            style: TextStyle(
                                fontSize: 14.sp, color: Color(0xff7C7D7E))),
                      ),
                      SizedBox(height: 36),
                      TextFormField(
                        decoration: InputDecoration(hintText:LocaleKeys.name.tr()),
                      ),
                      SizedBox(height: 28),
                      TextFormField(
                        decoration: InputDecoration(hintText:LocaleKeys.email.tr()),
                      ),
                      SizedBox(height: 28),
                      TextFormField(
                        decoration: InputDecoration(hintText:LocaleKeys.mobileNo.tr()),
                      ),
                      SizedBox(height: 28),
                      TextFormField(
                        decoration: InputDecoration(hintText:LocaleKeys.address.tr()),
                      ),
                      SizedBox(height: 28),
                      TextFormField(
                        decoration: InputDecoration(hintText: LocaleKeys.password.tr()),
                      ),
                      SizedBox(height: 28),
                      TextFormField(
                        decoration:
                            InputDecoration(hintText:LocaleKeys.confirmPassword.tr()),
                      ),
                      SizedBox(height: 28),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffFC6011)),
                          child: Text(
                            LocaleKeys.signUp.tr(),
                            style: TextStyle(
                                fontSize: 16.sp, color: Color(0xffFFFFFF)),
                          )),
                      SizedBox(height: 24),
                      Center(
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text:LocaleKeys.alreadyHaveAnAccount.tr(),
                                style: TextStyle(color: Color(0xff707070))),
                            WidgetSpan(
                                child: InkWell(
                                    onTap: () {},
                                    child: Text(LocaleKeys.login.tr(),
                                        style: TextStyle(
                                            color: Color(0xffFC6011)))))
                          ]),
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      )
                    ])))));
  }
}
