import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final Color activeColor;
  final double size;
  final Function(bool value)? onChanged;

  const CustomCheckBox(
      {super.key,
      this.value = false,
      this.activeColor = AppColors.primaryColor,
      required this.size,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      key: key,
      height: size.w,
      width: size.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: activeColor,
        ),
        // borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: value ? activeColor : Colors.white,
      ),
      duration: const Duration(microseconds: 400),
      child: Center(
        child: AnimatedContainer(
          key: key,
          duration: const Duration(microseconds: 400),
          height: (size * 0.4).w,
          width: (size * 0.4).w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: value ? Colors.white : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
