import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';


 InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  fillColor: AppColors.whiteColor,
  filled: true,
  hintStyle: const TextStyle(color: AppColors.greyColor),
  prefixIconColor: AppColors.primaryColor,
  border:  OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(2.w)),
    borderSide: const BorderSide(
      color: AppColors.primaryColor,
    ),
  ),
  enabledBorder:  OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(2.w)),
    borderSide: const BorderSide(
      color: AppColors.primaryColor,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(2.w)),
    borderSide: const BorderSide(color: AppColors.primaryColor),
  ),
  errorBorder:  OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(2.w)),
    borderSide: const BorderSide(
      color: AppColors.errorColor,
    ),
  ),
);




//  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//   borderRadius:
//   BorderRadius.all(Radius.circular(2.w)),
//   borderSide: const BorderSide(
//     color: AppColors.primaryColor,
//   ),
// );
//
//  OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
//   borderRadius:
//   BorderRadius.all(Radius.circular(2.w)),
//   borderSide: const BorderSide(color: AppColors.primaryColor),
// );
// //
// //  OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
//   borderRadius:
//   BorderRadius.all(Radius.circular(2.w)),
//   borderSide: const BorderSide(
//     color: AppColors.errorColor,
//   ),
// );

// OutlineInputBorder secondaryOutlineInputBorder(BuildContext context) {
//   return OutlineInputBorder(
//     borderRadius:  BorderRadius.all(
//         Radius.circular(2.w)),
//     borderSide: BorderSide(
//       color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.15),
//     ),
//   );
// }