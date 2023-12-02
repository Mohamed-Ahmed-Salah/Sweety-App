import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_assets.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/constants/app_icons.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: false,
      expandedHeight: 15.h,
      collapsedHeight:15.h,
      flexibleSpace: Container(
        margin: EdgeInsets.only(top: 2.h,left: 5.w),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 9.h,
              width: 9.h,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppAssets.profile,
                scale: .8,
                // height: 10.h,
                // width: 10.h,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Deliver to",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.greyTextColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
                Text(
                  "Cairo university Giza, Egypt",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            const ShoppingCart(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(15.h);
}


class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 10.h,
      width: 10.h,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 7.h,
              width: 7.h,
              decoration: const BoxDecoration(
                color: AppColors.boxColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: SvgPicture.asset(AppIcons.cart),
              ),
            ),
          ),
          Positioned(
            right: 0.5.w,
            top: 1.5.h,
            child: Container(
              height: 4.h,
              width: 4.h,
              decoration: const BoxDecoration(
                  color: AppColors.blackColor, shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  "0",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
