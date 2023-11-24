class AppException implements Exception {
  final String errorMessage;

  const AppException({required this.errorMessage});

  @override
  String toString() {
    return errorMessage;
  }
}

class AuthorizationException implements Exception {
  final String errorMessage;
  AuthorizationException({
    required this.errorMessage,
  });
}

class NoUsersCardException extends AppException {
  @override
  final String errorMessage;
  NoUsersCardException({
    required this.errorMessage,
  }) : super(errorMessage: errorMessage);
}

class CacheException extends AppException {
  @override
  final String errorMessage;
  CacheException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

/// Exception thrown when Login login fails
class LoginException extends AppException {
  @override
  final String errorMessage;
  const LoginException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

/// Exception thrown when the  user does not have an internet connection
class NoInternetException extends AppException {
  @override
  final String errorMessage;
  const NoInternetException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

class NoProfilePicException extends AppException {
  @override
  final String errorMessage;
  const NoProfilePicException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

class NotificationException extends AppException {
  @override
  final String errorMessage;
  const NotificationException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

/// Exception thrown when there is an error thrown from the server
class ServerException extends AppException {
  @override
  final String errorMessage;
  const ServerException({required this.errorMessage})
      : super(errorMessage: errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}

/// Exception thrown when Signup fails
class SignUpException extends AppException {
  @override
  final String errorMessage;
  const SignUpException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

class TokenNotVerifiedException extends AppException {
  @override
  final String errorMessage;

  const TokenNotVerifiedException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}

class UnknownException extends AppException {
  @override
  final String errorMessage;
  const UnknownException(this.errorMessage) : super(errorMessage: errorMessage);
}

class UnknownPlatformException extends AppException {
  @override
  final String errorMessage;
  const UnknownPlatformException({required this.errorMessage})
      : super(errorMessage: errorMessage);
}



// class ServerException implements Exception {}

// class CacheException implements Exception {}
