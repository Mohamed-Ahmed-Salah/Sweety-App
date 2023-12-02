part of 'splash_bloc.dart';

sealed class SplashEvent extends Equatable {
  final BuildContext context;

  const SplashEvent({required this.context});

  @override
  List<Object> get props => [context];
}

class SplashNavigateEvent extends SplashEvent {
  const SplashNavigateEvent({required super.context});
}
