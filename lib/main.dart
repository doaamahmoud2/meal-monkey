import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey2/new_password/view.dart';
import 'package:meal_monkey2/screens/login/view.dart';
import 'package:meal_monkey2/screens/on_boarding/view.dart';
import 'package:meal_monkey2/screens/otp/view.dart';
import 'package:meal_monkey2/screens/reset_password/view.dart';
import 'package:meal_monkey2/screens/signup/view.dart';
import 'package:meal_monkey2/screens/splash/view.dart';
import 'generated/codegen_loader.g.dart';
import 'helper/color.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: ScreenUtilInit(builder: (context) => const MyApp()),
    saveLocale: true,
    startLocale: const Locale("en"),
    fallbackLocale: const Locale("ar"),
    assetLoader: const CodegenLoader(),
    supportedLocales:const [Locale("ar"),Locale("en")],
    path:"Assets/Langs"));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              primarySwatch: buildMaterialColor(Color(0xffFC6011)),
              platform: TargetPlatform.iOS,
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.r)),
                padding: EdgeInsets.only(top: 17, bottom: 18),
              )),
              outlinedButtonTheme: OutlinedButtonThemeData(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.r)),
                      padding: EdgeInsets.only(top: 17, bottom: 18),
                      side: BorderSide(
                        color: Color(0xffFF6011),
                      ))),
              inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.r),
                      borderSide: BorderSide.none),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 34, vertical: 25),
                  filled: true,
                  fillColor: Color(0xffF2F2F2)),
            ),
            home: PageView(
              children: [
                SplashScreen(),
                OnBoardingScreen(),
                LoginScreen(),
                SignupScreen(),
                ResetpasswordScreen(),
                OtpScreen(),
                NewPasswordScreen()
              ],
            ));
  }
}
