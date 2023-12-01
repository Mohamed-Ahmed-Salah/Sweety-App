part of 'menu_list_bloc.dart';

sealed class MenuListEvent extends Equatable {
  const MenuListEvent();

  @override
  List<Object> get props => [];


}


class ChangeSwitchEvent extends MenuListEvent {
  const ChangeSwitchEvent({
    required this.value,
    required this.menu,
  });
  final Menu menu;
  final bool value;

  //
  // @override
  // List<Object?> get props => [menu,value];
}
