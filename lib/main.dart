import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/routes/app_routes.dart';
import 'package:sweety_app/core/routes/router.dart';

import 'package:sweety_app/core/theme/light_theme.dart';
import 'package:sweety_app/data/services/storage_service.dart';
import 'views/settings_screen/blocs/bloc/menu_list_bloc.dart';
import 'views/splash_screen/bloc/splash_bloc.dart';
import 'views/splash_screen/splash_screen.dart';

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
          onGenerateRoute: AppRouter.generateRoute,
          home: BlocProvider(
              create: (BuildContext context) =>
                  SplashBloc()..add(SplashNavigateEvent(context: context)),
              child: const SplashScreen()),
        );
      }),
    );
  }
}

init() async {
  //to make top side pink

  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init())
      .then((value) => print("DONE DONE STORAGE"));
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    // statusBarBrightness: Brightness.light,
    // statusBarIconBrightness: Brightness.light,
  ));
}
