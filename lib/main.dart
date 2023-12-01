import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/theme/light_theme.dart';
import 'package:sweety_app/views/navigator/navigator_screen.dart';

import 'views/settings_screen/blocs/bloc/menu_list_bloc.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider<MenuListBloc>(
          create: (BuildContext context) => MenuListBloc(),
        ),

      ],
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: CustomLightTheme.lightTheme(),
          // home: const NavigatorScreen(),
          home: const NavigatorScreen(),
        );
      }),
    );
  }
}

init() {
  //to make top side pink
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    // statusBarBrightness: Brightness.light,
    // statusBarIconBrightness: Brightness.light,
  ));
}
