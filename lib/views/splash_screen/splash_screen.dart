import 'package:flutter/material.dart';
import 'package:sweety_app/core/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //image
            //text
            Text(
              "Sweety",
              style: TextStyle(color: AppColors.whiteColor,),
            )
          ],
        ),
      ),
    );
  }
}
