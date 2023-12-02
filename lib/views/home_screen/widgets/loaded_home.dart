import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/data/models/food.dart';

class HomeLoadedView extends StatelessWidget {
  final List<Food> list;

  const HomeLoadedView({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 3.8,
            // crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemBuilder: (context, index) {
          return FoodBox(
            food: list[index],
          );
        });
  }
}

class FoodBox extends StatelessWidget {
  final Food food;

  const FoodBox({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      decoration: BoxDecoration(
        // color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(6.w)),
        border: Border.all(color: AppColors.blackColor.withOpacity(0.2)),
      ),
      child: Stack(
        children: [
          Positioned(
            // bottom: 0,
            child: Container(
              // width: double.infinity,
              // height: 25.h,
              // margin: EdgeInsets.only(left: 2.w),
              // decoration: BoxDecoration(
              //   color: AppColors.greyColor,
              //   borderRadius: BorderRadius.all(Radius.circular(6.w)),
              // ),

              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Expanded(child: SizedBox.shrink()),
                    Text(
                      food.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      food.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              child: Container(
            height: 25.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(6.w)),
            ),
          )),
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              height: 7.h,
              width: 7.h,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  food.isFavourite
                      ? Icons.favorite
                      : Icons.favorite_outline_rounded,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 7.h,
                width: 20.w,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(15.w))),
                child: Center(
                    child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "EGP ",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    TextSpan(
                      text: "${food.price}",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ]),
                )),
              )),
          Positioned(
              top: 5,
              left: 0,
              right: 0,
              child: Image.asset(
                food.image,
                scale: 0.8,
              )),
          Positioned(
              left: 10,
              bottom: 9.h,
              child: Container(
                height: 6.h,
                width: 23.w,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(
                        color: AppColors.blackColor.withOpacity(0.1)),
                    borderRadius: BorderRadius.all(Radius.circular(15.w))),
                child: Center(
                    child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Expanded(child: SizedBox.shrink()),
                    Text(
                      "${food.rating}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 5.w,
                    ),
                    Text(
                      "(${food.reviews}+)",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.greyColor),
                    ),
                    const Expanded(child: SizedBox.shrink()),
                  ],
                )),
              )),
        ],
      ),
    );
  }
}
