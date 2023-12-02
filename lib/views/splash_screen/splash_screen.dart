import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sweety_app/core/constants/app_assets.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/views/splash_screen/bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (BuildContext context, state) {
        print("splashe event alled");
        if(state is SplashInitial){
          context.read<SplashBloc>().add(SplashNavigateEvent(
              context: context,
          ));
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.dessert),
              Text("Sweety",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        // fontFamily: "Poppins-Black"
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
