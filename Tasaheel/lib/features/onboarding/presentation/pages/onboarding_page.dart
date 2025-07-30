import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tasaheel/core/widgets/button/top_nav_actions.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/onboarding/onboarding_cubit.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/button_widget.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/custom_text_widget.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/progress_dots_indicator.dart';
import 'package:tasaheel/routes/app_routes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(GetIt.I()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<OnboardingCubit>();
          final onboardingData = cubit.onboardingRepo.getOnboardingData();
          return Scaffold(
            body: SafeArea(
              child: PageView.builder(
                controller: cubit.pageController,
                itemCount: onboardingData.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = onboardingData[index];
                  final isFirstPage = index == 0;
                  final isLastPage = index == onboardingData.length - 1;
                  return Column(
                    children: [
                      TopNavActions(
                        showBack: isFirstPage ? false : true,
                        onPressedBack: () =>
                            isFirstPage ? null : cubit.previousPage(),

                        onPressedSkip: () => context.go(Routes.selection),
                      ),
                      SizedBox(height: 48),
                      Image.asset(item.image),
                      SizedBox(height: 42),

                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              title: item.title,
                              subTitle: item.subTitle,
                            ),
                            SizedBox(height: 110),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProgressDotsIndicator(
                                  controller: cubit.pageController,
                                  pages: onboardingData.length,
                                ),

                                ButtonWidget(
                                  onPressed: () {
                                    isLastPage
                                        ? context.go(Routes.selection)
                                        : cubit.nextPage();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
