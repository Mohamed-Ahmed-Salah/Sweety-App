class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const SPLASH = _Paths.SPLASH;
  static const AUTH = _Paths.AUTH;
  static const SETTING = _Paths.SETTING;
  static const FAVOURITE = _Paths.FAVOURITE;
  static const ON_BOARDING = _Paths.ON_BOARDING;

  static const List siteMenuItems = [
    HOME,
    SPLASH,
    AUTH,
    FAVOURITE,
    SETTING,
    ON_BOARDING
  ];
}

abstract class _Paths {
  _Paths._();

  static const HOME = '/home';
  static const SPLASH = '/splash';
  static const AUTH = '/auth';
  static const SETTING = '/setting';
  static const FAVOURITE = '/favourite';
  static const ON_BOARDING = "/onboarding";
}
