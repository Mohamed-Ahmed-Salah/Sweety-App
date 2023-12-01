import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/constants/app_icons.dart';
import 'package:sweety_app/data/models/side_menu.dart';
import 'package:sweety_app/views/settings_screen/blocs/bloc/menu_list_bloc.dart';

class SettingsItem extends StatelessWidget {
  final Menu menu;

  const SettingsItem({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 8.h,
        width: 8.h,
        decoration: const BoxDecoration(
            color: AppColors.boxColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
          child: SvgPicture.asset(
            menu.icon,
            height: 4.5.h,
          ),
        ),
      ),
      title: Text(menu.title),
      subtitle: Text(menu.subTitle),
      trailing: menu.selectable ? ListSwitch(menu: menu) : null,
    );
  }
}

class ListSwitch extends StatelessWidget {
  final Menu menu;

  const ListSwitch({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      // This bool value toggles the switch.
      value: menu.enabled,
      activeColor: AppColors.primaryColor,

      onChanged: (bool value) {
        context.read<MenuListBloc>().add(ChangeSwitchEvent(
          menu: menu,
          value:value
        ));

        // This is called when the user toggles the switch.
      },
    );
  }
}
