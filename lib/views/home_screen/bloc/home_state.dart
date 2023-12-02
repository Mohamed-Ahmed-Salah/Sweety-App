part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoaded extends HomeState {
  final List<Food> list;

  const HomeLoaded({required this.list});
}

final class HomeFailed extends HomeState {
  final Failure failure;

  const HomeFailed({required this.failure});
}
