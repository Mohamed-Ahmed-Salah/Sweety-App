import 'package:equatable/equatable.dart';

class Menu extends Equatable {
  final String title;
  final String subTitle;
  final String icon;
  final bool selectable;
  final bool enabled;
  final String type;

  const Menu(
      {required this.title,
      this.enabled = false,
      required this.subTitle,
      required this.icon,
      this.selectable = false,
      required this.type});

  Menu copyWith(
          {String? title,
          String? subTitle,
          String? type,
          String? icon,
          bool? selectable,
          bool? enabled}) =>
      Menu(
        title: title ?? this.title,
        subTitle: subTitle ?? this.subTitle,
        enabled: enabled ?? this.enabled,
        icon: icon ?? this.icon,
        selectable: selectable ?? this.selectable,
        type: type ?? this.type,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [enabled,title];
}
