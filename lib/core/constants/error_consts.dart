class ErrorConst {
  const ErrorConst._();
  static const String NO_INTERNET_MESSAGE =
      'Error: Could not connect to the Internet. Please Check your internet settings.';

  static const String TIMEOUT_MESSAGE =
      'Timeout Error: Timeout waiting from response from server. Please try again Later.';

  static const String NULL_TOKEN_MESSAGE = 'Token is ';

  static const String CACHE_NOT_FOUND_MESSAGE =
      'Cache Error: Could not find cached data on device for this action';

  static const String UNKNOWN_ERROR =
      'Error: Unknown Error. Please Contact MaxPay';
  static const String NO_USER_CARD_ERROR =
      'Error: Your account dont have any linked card please add or create a new one';
  static const String LOGIN_GENERIC_ERROR_MESSAGE =
      "Error: Could not login at this time. Please Contact MaxPay.";

  static const String UNKNOWN_PLATFORM_ERROR = 'Error: Unknown Platform';

  static const String INVALID_PHONE =
      'Error : \n Please Enter a Valid Phone Number Starting 249';
  static const String OTP_NOT_FOUND = 'Error : \n Invalid OTP Code.';

  static const String AUTH_ERROR = 'Please Login Again';
}
