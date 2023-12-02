import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/constants/app_icons.dart';
import 'package:sweety_app/core/widgets/my_app_bar.dart';
import 'package:sweety_app/views/home_screen/bloc/home_bloc.dart';
import 'package:sweety_app/views/home_screen/widgets/custom_chip.dart';
import 'package:sweety_app/views/home_screen/widgets/loaded_home.dart';
import 'package:sweety_app/views/home_screen/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const MyAppBar(),
      body: CustomScrollView(
        slivers: [
          const MyAppBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    "Good morning, Razan! ",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "Let’s get your order",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AppColors.primaryColor),
                  ),
                  const CustomSearchBar(),
                  const CustomChip(),
                ],
              ),
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is HomeInitial) {
              context.read<HomeBloc>().add(FetchDataEvent());
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                ),
              );
            } else if (state is HomeLoaded) {
              return HomeLoadedView(
                list: state.list,
              );
            }
            if (state is HomeFailed) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Center(
                      child: Text("Error: ${state.failure.message}"),
                    ),
                  ],
                ),
              );
            }

            return SliverList(
                delegate: SliverChildListDelegate([
              const Text("ERROR"),
            ]));
          }),
        ],
      ),
    );
  }
}
