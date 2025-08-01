import 'package:flutter/material.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 52,
      width: 52,
      decoration: BoxDecoration(color: AppPalette.blue, shape: BoxShape.circle),
    );
  }
}
