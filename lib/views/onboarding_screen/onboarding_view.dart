import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sweety_app/core/constants/app_assets.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
import 'package:sweety_app/core/constants/app_icons.dart';
import 'package:sweety_app/views/navigator/navigator_screen.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [

            Positioned.fill(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int index) {

                  setState(() {
                    print("index befire $_selectedIndex vs now is $index}");
                    _selectedIndex = index;
                  });
                },
                children: const [
                  HeadlineAndBodyText(
                    body:
                        "Discover a world of delectable treats at your fingerprints. Satisfaction is just a few taps away.",
                    headline: "Welcome to Sweety!",
                  ),
                  HeadlineAndBodyText(
                    body:
                        "Easily select your favorite fresh desserts, and customize your order.",
                    headline: "Order Your Favorites",
                  ),
                  HeadlineAndBodyText(
                    body:
                        "Add your address and enjoy our fast, and free delivery, no matter if you pay online or cash.",
                    headline: "Fast & Free Delivery",
                    show: true,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              top: 50.h,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotHeight: 16,
                      dotWidth: 16,
                      activeDotColor: AppColors.primaryColor,
                      dotColor: AppColors.greyColor.withOpacity(0.3)

                      // type: WormType.thinUnderground,
                      ),
                ),
              ),
            ),
            Positioned(
                right: 4.w,
                bottom: 7.h,
                child: SizedBox(
                  width: 40.w,
                  child: ElevatedButton(
                    onPressed: () {
                      print("object");
                      if (_selectedIndex < 2) {
                        setState(() {

                        _pageController.animateToPage(2,
                            duration: const Duration(microseconds: 500),
                            curve: Curves.linear);

                        });

                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigatorScreen()),
                        );
                      }
                    },
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      switchInCurve: Curves.easeInOut,
                      switchOutCurve: Curves.easeInOut,
                      transitionBuilder:
                          (Widget child, Animation<double> animation) =>
                              ScaleTransition(
                        scale: animation,
                        child: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      ),
                      child: _selectedIndex == 2
                          ? const Text(
                              "Home",
                              key: Key("Home"),
                            )
                          : const Text(
                              "Skip",
                              key: Key("Skip"),
                            ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class HeadlineAndBodyText extends StatelessWidget {
  final String headline;
  final String body;
  final bool show;

  const HeadlineAndBodyText(
      {super.key,
      required this.body,
      required this.headline,
      this.show = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          margin: EdgeInsets.symmetric(horizontal: 10.h,
          vertical: 5.h),
          child: show ? Image.asset(AppAssets.scooter) : null,
        ),
        Text(
          headline,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppColors.primaryColor,
              ),
        ),
        Text(
          body,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
