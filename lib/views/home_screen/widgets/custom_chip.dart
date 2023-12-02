import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Container(
      margin: EdgeInsets.symmetric(vertical:1.h),
      height: 10.h,
      width: double.infinity,
      child: ListView.builder(
          itemCount: chips.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.only(right: 2.w,),
              child: Chip(
                backgroundColor: currentIndex == index
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withOpacity(0.05),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(chips[index],
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                     color: currentIndex == index
                          ? AppColors.whiteColor
                          : AppColors.primaryColor
                  ),),
                ),
              ),
            );
          }),
    );

    //   Row(
    //   children: [
    //     Chip(
    //       label: const Text('Aaron Burr'),
    //     ),
    //   ],
    // );
  }
}

List<String> chips = [
  "Popular",
  "Pastries",
  "Cakes",
  "Gluten-Free",
  "Cupcakes and Muffins"
];
