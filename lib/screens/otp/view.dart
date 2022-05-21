import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey2/generated/locale_keys.g.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsetsDirectional.only(
                top: 60.r, start: 34.r, end: 34.r, bottom: 25.r),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

              Center(
              child: Text(
              LocaleKeys.weHaveSentAnOTPToYourMobile.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25, color: Color(0xff4A4B4D)),
            )),

      SizedBox(height: 10),
      Center(
        child: Text(
          LocaleKeys.hintRest.tr(),
          textAlign: TextAlign.center,
          style:  TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
        ),
      ),
      SizedBox(height: 36.h),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: const Color(0xffFC6011)),
          child: Text(
              "Next",
              style: TextStyle(
                  fontSize: 16.sp, color: const Color(0xffFFFFFF)))),
      SizedBox(height: 32.h),
      Center(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
                text: LocaleKeys.didNotReceive.tr(),
                style:
                const TextStyle(color: Color(0xff707070))),
            WidgetSpan(
                child: InkWell(
                    onTap: () {},
                    child: Text(LocaleKeys.clickHere.tr(),
                        style: const TextStyle(
                            color: Color(0xffFC6011)))))
          ]),
          // style: TextStyle(fontSize: 14.sp),
        ),
      )],
    ),)
    )
    );
  }
}