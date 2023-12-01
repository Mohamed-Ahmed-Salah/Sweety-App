part of 'menu_list_bloc.dart';

sealed class MenuListState extends Equatable {
   List<Menu> list;

   MenuListState({required this.list});

  @override
  List<Object> get props => [list];
}

final class MenuListInitial extends MenuListState {
   MenuListInitial({required super.list});
}
