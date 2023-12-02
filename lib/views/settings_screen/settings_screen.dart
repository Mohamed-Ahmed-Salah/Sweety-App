import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/data/models/side_menu.dart';
import 'package:sweety_app/views/settings_screen/blocs/bloc/menu_list_bloc.dart';
import 'package:sweety_app/views/settings_screen/widgets/SettingsItem.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: BlocBuilder<MenuListBloc,MenuListState>(
        builder: (context,state) {
          final List<Menu> menus=state.list;
          return ListView.builder(
              itemCount: menus.length + 1,
              itemBuilder: (_, index) {
                if (index == menus.length) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 5.w),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Log out",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: AppColors.orangeColor),
                        )),
                  );
                }
                return SizedBox(
                  // height: 20.h,
                  width: 100.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0 || menus[index].type != menus[index - 1].type)
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 2.h,
                          ),
                          child: Text(
                            menus[index].type,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      SettingsItem(menu: menus[index]),
                    ],
                  ),
                );
              });
        }
      ),
    );
  }
}
