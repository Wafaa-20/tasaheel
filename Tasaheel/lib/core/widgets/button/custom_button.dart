import 'package:flutter/material.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.width,
    this.height,
    this.sideColor,
    this.padding,
    this.borderRadius,
    this.withContainer = true,
    this.shapeCircle = false,
  });
  final void Function()? onPressed;
  final Widget child;
  final Color? color;
  final Color? sideColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final bool withContainer;
  final bool shapeCircle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: withContainer ? BorderRadius.circular(18) : null,
        gradient: withContainer
            ? LinearGradient(
                colors: [AppPalette.yellowLight, AppPalette.yellow],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
            : null,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: shapeCircle
              ? CircleBorder()
              : RoundedRectangleBorder(
                  borderRadius:
                      borderRadius ?? BorderRadiusGeometry.circular(18),
                  side: BorderSide(
                    color: sideColor ?? AppPalette.transparent,
                    width: 2,
                  ),
                ),
          padding: padding ?? EdgeInsets.zero,
          backgroundColor: color ?? AppPalette.transparent,
          shadowColor: AppPalette.transparent,
          foregroundColor: AppPalette.whiteLight,
          fixedSize: Size(width ?? 240, height ?? 48),
        ),
        child: child,
      ),
    );
  }
}
