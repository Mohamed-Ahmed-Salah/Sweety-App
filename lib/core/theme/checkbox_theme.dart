import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/AppSizesConsts.dart';
import 'package:sweety_app/core/constants/app_colors.dart';

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  fillColor: MaterialStateProperty.all(AppColors.primaryColor),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(2.w),
    ),
  ),
  side: const BorderSide(color: AppColors.primaryColor),
  // side: const BorderSide(color: AppColors.blackColor40),
);

RadioThemeData radioThemeData = RadioThemeData(
  fillColor: MaterialStateProperty.all(AppColors.primaryColor),

);
