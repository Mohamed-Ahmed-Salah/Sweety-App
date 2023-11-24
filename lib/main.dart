import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/theme/light_theme.dart';
import 'package:sweety_app/views/navigator/navigator_screen.dart';
import 'package:sweety_app/views/onboarding_screen/onboarding_view.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: CustomLightTheme.lightTheme(),
        // home: const NavigatorScreen(),
      home: OnboardingView(),

      );
    });
  }
}
init(){
  //to make top side pink
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    // statusBarBrightness: Brightness.light,
    // statusBarIconBrightness: Brightness.light,
  ));
}