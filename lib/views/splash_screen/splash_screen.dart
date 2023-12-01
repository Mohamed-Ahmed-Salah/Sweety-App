import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweety_app/core/constants/app_assets.dart';
import 'package:sweety_app/core/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //image
            //text
            Image.asset(AppAssets.dessert),
             Text(
              "Sweety",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                // fontFamily: "Poppins-Black"

              )
            )
          ],
        ),
      ),
    );
  }
}
