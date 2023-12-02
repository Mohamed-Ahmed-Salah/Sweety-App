import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 100.w,
      margin: EdgeInsets.symmetric(vertical:1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              border: Border.all(
                color: AppColors.boxColor,
                width: 2,
              ),
            ),
            height: 9.h,
            width: 70.w,
            child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.greyTextColor,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.boxColor,
                width: 2,
              ),
            ),
            height: 9.h,
            width: 9.h,
            child: const Center(
                child: Icon(
                  Icons.filter_list_sharp,
                  color: AppColors.greyTextColor,
                )),
          )
        ],
      ),
    );
  }
}