import 'package:flutter/material.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/core/widgets/button/custom_button.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.color,
    required this.title,
    required this.image,
    required this.height,
    this.width,
    required this.subTitle1,
    this.subTitle2,
    this.subTitle3,
    this.extraTitle = false,
  });
  final Color color;
  final String title;
  final String subTitle1;
  final String? subTitle2;
  final String? subTitle3;
  final String image;
  final double height;
  final double? width;
  final bool extraTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157,
      width: 177,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: SizedBox(
              height: height,
              width: width,
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 12),
                  Text(title, style: TextStyles.sf60020),
                  SizedBox(height: 12),
                  extraTitle
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              subTitle2!,
                              style: TextStyles.sf60036.copyWith(
                                color: AppPalette.whiteLight,
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(subTitle1, style: TextStyles.sf50016),
                            SizedBox(width: 12),
                            Text(
                              subTitle3!,
                              style: TextStyles.sf60036.copyWith(
                                color: AppPalette.whiteLight,
                              ),
                            ),
                          ],
                        )
                      : Text(subTitle1, style: TextStyles.sf50016),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomButton(
                  width: 33,
                  height: 40,
                  withContainer: false,
                  shapeCircle: true,
                  color: AppPalette.white,
                  borderRadius: BorderRadius.circular(50),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    color: AppPalette.greyPrimary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
