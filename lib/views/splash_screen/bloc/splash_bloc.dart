import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sweety_app/core/routes/app_routes.dart';
import 'package:sweety_app/data/services/storage_service.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashNavigateEvent>(_navigate);
  }

  _navigate(event, emit) async {
    // TODO: implement event handler
    BuildContext context = event.context;

    await 3.delay(() async {
      await _initialRoute().then((route) {
        //final String pin = StorageService.to.getPin ?? "";
        //  print(pin);
        print("HERE COMES THE BOOM $route");
        // Get.toNamed(Routes.SCREEN_LOCK,arguments: {"route":route});

        Navigator.pushNamed(
          context,
          route,
        );
        // if (route == Routes.HOME) {
        //   // Navigator.pushNamed(
        //   //   context,
        //   //   route,
        //   // );
        // } else {
        //   print("ITS NOTTTTT HOME");
        //
        //   Get.offAllNamed(route);
        // }
      });
    });
  }

  Future<String> _initialRoute() async {
    String initialRoute = Routes.AUTH;
    //final bool firstTime = StorageService.to.getFirstTimeFlag;
    final String token = '4444444';
    // if (firstTime) {
    //   initialRoute = Routes.ON_BOARDING;
    // } else {
    if (token.isNotEmpty) {
      // if (Jwt.isExpired(token) || token.isEmpty) {
      //   initialRoute = Routes.AUTH;
      // } else{
      initialRoute = Routes.ON_BOARDING;

      // initialRoute = Routes.HOME;
    } else {
      initialRoute = Routes.AUTH;
    }
    // }

    return initialRoute;
  }
}
