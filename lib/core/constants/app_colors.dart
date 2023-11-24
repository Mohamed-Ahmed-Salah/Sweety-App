import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const Color primaryColor = Color(0xFF900532);
  static const Color pinkColor = Color(0xFFF27D82);
  static const Color greyColor = Color(0xFF667C8A);
  static const Color blackColor = Color(0xFF323232);
  //secondary
  // static const Color greenColor = Color(0xFF4CAF50);
  static const Color blueColor = Color(0xFF008CBA);
  static const Color orangeColor = Color(0xFFf44336);

  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color greyTextColor = Color(0xFFB6B9BF);

  static const Color boxColor = Color(0xFFF9F2F5);

  // static const Color alertGreen = Color(0xFF207720);
  static const Color alertRed = Color(0xFFF82D2D);
  static const Color alertDarkYellow = Color(0xFFCF7F07);

//could be deleted
  static const Color successColor = Color(0xFF2ED573);
  static const Color warningColor = Color(0xFFFFBE21);
  static const Color errorColor = Color(0xFFEA5B5B);
// //FF5050
// static const Color maxPayLightGrey = Color(0xFFB1B1B1);
//
//
// static const Color cardLightGradientColor=Color(0xFF6441A5);
// static const Color cardDarkGradientColor=Color(0xFF0F0C29);
//
// static const Color visaCardLightGradientColor=Color(0xFF43C6AC);
// static const Color visaCardDarkGradientColor=maxPayNavyBlue;
//
// static const Color visaOptionDark= Color(0xFF0B3866);
// static const Color visaOptionMiddle= Color(0xFF44878C);
// static const Color visaOptionLight=Color(0xFF95F9C3);
// static const Color visaButtonColor=Color(0xFF3FA796);
// static const Color visaBackColor=Color(0xFFCFCDCD);
//
}


class Palette {
  static const MaterialColor primary = MaterialColor(
    0xFF1F896A,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFF900532), //10%
      100: Color(0xFF9b1e47), //20%
      200: Color(0xFFa6375b), //30%
      300: Color(0xFFb15070), //40%
      400: Color(0xFFbc6984), //50%
      500: Color(0xFFc88299), //60%
      600: Color(0xFFd39bad), //70%
      700: Color(0xFFdeb4c2), //80%
      800: Color(0xFFe9cdd6), //90%
      900: Color(0xFFf4e6eb), //100%
    },
  );
}
