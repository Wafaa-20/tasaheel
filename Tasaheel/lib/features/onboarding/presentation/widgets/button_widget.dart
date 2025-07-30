import 'package:flutter/material.dart';
import 'package:tasaheel/core/widgets/button/custom_button.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      height: 60,
      width: 63,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),

      onPressed: onPressed,
      child: Icon(Icons.arrow_forward_ios, size: 24),
    );
  }
}
