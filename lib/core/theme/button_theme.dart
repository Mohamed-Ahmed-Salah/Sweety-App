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
    ) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.whiteColor,
      minimumSize:  Size(double.infinity, 7.h),
      textStyle:
          const TextStyle(color: AppColors.orangeColor, fontFamily: "Poppins-Medium"),
      side: const BorderSide(width: 1.5, color: AppColors.orangeColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
      ),
    ),
  );
}
