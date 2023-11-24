import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sweety_app/core/constants/app_colors.dart';
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
              top: 40.h,
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
                  ),
                ],
              ),
            ),
            Positioned.fill(
              top: 30.h,
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
                      _selectedIndex < 2
                          ? _pageController.animateToPage(2,
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn)
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigatorScreen()),
                            );
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

  const HeadlineAndBodyText(
      {super.key, required this.body, required this.headline});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
