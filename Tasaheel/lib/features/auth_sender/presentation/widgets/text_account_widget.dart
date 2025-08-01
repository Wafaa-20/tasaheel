import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class TextAccountWidget extends StatelessWidget {
  const TextAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyles.sf40016,
        children: [
          TextSpan(text: AppText.account),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushNamed(Names.login);
              },
            text: ' ${AppText.login}',
            style: TextStyles.sf40016.copyWith(color: AppPalette.yellow),
          ),
        ],
      ),
    );
  }
}
