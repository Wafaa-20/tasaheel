import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.sf60036),
        SizedBox(height: 10),
        Text(
          subTitle,
          style: TextStyles.sf40018.copyWith(color: AppPalette.black),
        ),
      ],
    );
  }
}
