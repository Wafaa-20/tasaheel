import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/button_widget.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/country_code.dart';
import 'package:tasaheel/features/onboarding/presentation/widgets/user_type_widget.dart';

class UserSelectionPage extends StatelessWidget {
  const UserSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<OnboardingCubit>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(left: 17),
              height: 31,
              width: 104,
              decoration: BoxDecoration(color: AppPalette.grayLight),
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
            UserTypeWidget(
              imagePath: 'assets/image/sender.png',
              label: AppText.sender,
              isSleeted: true,
            ),
            SizedBox(height: 46),
            UserTypeWidget(
              imagePath: 'assets/image/receiver.png',
              label: AppText.receiver,
              isSleeted: false,
            ),
            SizedBox(height: 57),
            ButtonWidget(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
