import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/app_colors.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColor,
    minimumSize:  Size(double.infinity, 7.h),
    textStyle:
         TextStyle(color: AppColors.whiteColor, fontFamily:
        "Poppins-Medium",fontSize: 20.sp),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.w)),
    ),
  ),
);

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: AppColors.blackColor,
    textStyle:
        const TextStyle(color: AppColors.whiteColor, fontFamily: "Poppins-Medium"),
  ),
);

OutlinedButtonThemeData outlinedButtonTheme(
    {Color borderColor = Colors.black12}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      minimumSize: const Size(double.infinity, 32),
      textStyle:
          const TextStyle(color: AppColors.whiteColor, fontFamily: "Poppins-Medium"),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.w)),
      ),
    ),
  );
}
