import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/core/widgets/button/custom_button.dart';
import 'package:tasaheel/core/widgets/custom_profile.dart';

class QuickSendWidget extends StatelessWidget {
  const QuickSendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            CustomProfile(),
            Text(
              "ياسمين",
              style: TextStyles.sf50016.copyWith(color: AppPalette.greyPrimary),
            ),
            CustomButton(
              height: 52,
              width: 52,
              shapeCircle: true,
              color: AppPalette.white,
              withContainer: false,
              onPressed: () {},
              child: Icon(Icons.add, color: AppPalette.blue, size: 30),
            ),
            Text(
              AppText.add,
              style: TextStyles.sf50016.copyWith(color: AppPalette.greyPrimary),
            ),
          ],
        );
      },
    );
  }
}
