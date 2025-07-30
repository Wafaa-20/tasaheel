import 'package:flutter/material.dart';
import 'package:tasaheel/core/themes/app_palette.dart';

class ProgressDotsIndicator extends StatelessWidget {
  const ProgressDotsIndicator({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final int pages;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        int currentPage = controller.hasClients
            ? controller.page?.round() ?? controller.initialPage
            : controller.initialPage;

        return Row(
          children: List.generate(pages, (index) {
            final isVisited = index <= currentPage;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: isVisited ? AppPalette.yellow : AppPalette.greySurface,
                shape: BoxShape.circle,
              ),
            );
          }),
        );
      },
    );
  }
}
