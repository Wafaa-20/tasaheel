import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class UserTypeWidget extends StatelessWidget {
  const UserTypeWidget({
    super.key,
    required this.imagePath,
    required this.label,
    this.onTap,
    required this.isSleeted,
  });
  final String imagePath;
  final String label;
  final bool isSleeted;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 152,
              width: 152,
              decoration: BoxDecoration(
                color: isSleeted
                    ? AppPalette.yellowSurface
                    : AppPalette.grayLight,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(76),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  color: isSleeted ? null : AppPalette.grayLight,
                  colorBlendMode: BlendMode.saturation,
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          isSleeted
              ? Text(label, style: TextStyles.sf40024)
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
