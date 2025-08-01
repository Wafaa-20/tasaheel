import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/onboarding/onboarding_cubit.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/onboarding/onboarding_state.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/button_widget.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/language_selector.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/user_type_widget.dart';

class UserSelectionPage extends StatelessWidget {
  const UserSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(GetIt.I()),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: LanguageSelector(),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppText.title, style: TextStyles.sf60024),
                      SizedBox(height: 12),
                      Text(AppText.subTitle, style: TextStyles.sf40024),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 69),
              BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  final cubit = context.read<OnboardingCubit>();
                  final selectedType = state is OnboardingPageState
                      ? state.selectedType
                      : null;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      UserTypeWidget(
                        imagePath: 'assets/image/sender.png',
                        label: AppText.sender.tr(),
                        onTap: () => cubit.select(UserType.sender),
                        isSleeted: selectedType == UserType.sender,
                      ),
                      SizedBox(height: 46),
                      UserTypeWidget(
                        imagePath: 'assets/image/receiver.png',
                        label: AppText.receiver,
                        onTap: () => cubit.select(UserType.receiver),
                        isSleeted: selectedType == UserType.receiver,
                      ),
                      SizedBox(height: 57),
                      ButtonWidget(
                        onPressed: () => selectedType == UserType.sender
                            ? context.go('/auth_sender')
                            : context.go('/auth_receiver'),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
