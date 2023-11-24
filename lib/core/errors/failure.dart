
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object> get props => [message];

  @override
  bool get stringify => true;
}

class NoUserCardFailure extends Failure {
  final String errorMessage;

  const NoUserCardFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [];
}

class LoginFailure extends Failure {
  final String errorMessage;

  const LoginFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [];
}

class LogoutFailure extends Failure {
  const LogoutFailure() : super(message: '');
}

class AuthraizathionFailure extends Failure {
  final String errorMessage;
  const AuthraizathionFailure({
    required this.errorMessage,
  }) : super(message: errorMessage);
}

class NoInternetFailure extends Failure {
  const NoInternetFailure() : super(message: '');
}

class NoProfilePicFailure extends Failure {
  const NoProfilePicFailure() : super(message: '');
}

class NotificationFailure extends Failure {
  final String errorMessage;

  const NotificationFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class ServerFailure extends Failure {
  final String errorMessage;

  const ServerFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class SignUpFailure extends Failure {
  final String errorMessage;

  const SignUpFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [];
}

class TimeoutFailure extends Failure {
  final String errorMessage;
  const TimeoutFailure({
    required this.errorMessage,
  }) : super(message: errorMessage);
}

class SocketFailure extends Failure {
  const SocketFailure() : super(message: '');

  @override
  List<Object> get props => [message];
}

class TokenNotVerifiedFailure extends Failure {
  final String errorMessage;

  const TokenNotVerifiedFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class UnknownFailure extends Failure {
  final String errorMessage;

  const UnknownFailure({required this.errorMessage}) : super(message: errorMessage);

  @override
  List<Object> get props => [message];
}

class UnknownPlatformFailure extends Failure {
  final String errorMessage;

  const UnknownPlatformFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class TransactionFailure extends Failure {
  final String errorMessage;

  const TransactionFailure({required this.errorMessage})
      : super(message: errorMessage);

  @override
  List<Object> get props => [];
}
