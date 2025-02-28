import 'package:Skytopia/features/onboarding/pages/second_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/generic_widgets/main_button.dart';
import 'bloc/onboarding_cubit.dart';
import 'first_onboarding.dart';

class MainOnboarding extends StatefulWidget {
  const MainOnboarding({super.key});

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {
  final PageController pageController = PageController();
  final int totalPages = 2;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {

                context.read<OnboardingCubit>().emit(index);
              },
              children: const [
                FirstOnboarding(),
                SecondOnboarding(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 128),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: totalPages,
                  effect: const ExpandingDotsEffect(dotHeight: 8, dotWidth: 8),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 16,
              right: 16,
              child: BlocBuilder<OnboardingCubit, int>(
                builder: (context, state) {
                  return MainButton(isSign: true,
                    text: state == totalPages - 1 ? "Get Started" : "Next",
                    onPressed: () {
                      if (state < totalPages - 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                        context.read<OnboardingCubit>().nextPage(totalPages);
                      } else {
                        Navigator.pushReplacementNamed(context, 'sign');
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
