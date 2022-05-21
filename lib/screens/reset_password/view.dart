import 'dart:html';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey2/generated/locale_keys.g.dart';

class  ResetpasswordScreen extends StatelessWidget {
  const ResetpasswordScreen({Key? key}) : super(key: key);

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
                          Center(
                            child: Text(LocaleKeys.resetPassword.tr(),
                                style: TextStyle(
                                    fontSize: 30.sp, color: Color(0xff4A4B4D))),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              LocaleKeys.pleaseEnterYourEmailToReceiveLinkToCreateAnewPasswordViaEmail.tr(),
                              style: TextStyle(
                                  fontSize: 14.sp, color: Color(0xff7C7D7E)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 60),
                          TextFormField(
                            decoration: InputDecoration(hintText:LocaleKeys.email.tr()),
                          ),
                          SizedBox(height: 43),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFC6011)),
                              child: Text(
                                LocaleKeys.send.tr(),
                                style: TextStyle(
                                    fontSize: 16.sp, color: Color(0xffFFFFFF)),
                              )),
                        ])))));
  }
}
