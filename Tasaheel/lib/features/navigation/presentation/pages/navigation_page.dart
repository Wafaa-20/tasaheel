import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/features/navigation/data/models/navigation_model.dart';
import 'package:tasaheel/features/navigation/presentation/bloc/navigation_bloc.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final bloc = context.read<NavigationBloc>();
        return BlocBuilder<NavigationBloc, NavState>(
          builder: (context, state) {
            int currentIndex = 0;
            if (state is NavigationSelectedState) {
              currentIndex = state.selectedIndex;
            }
            return Scaffold(
              body: Stack(
                children: [
                  bloc.pages[currentIndex],
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 82,
                      decoration: BoxDecoration(
                        color: AppPalette.greyPrimary,
                        borderRadius: BorderRadius.circular(33),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(items.length, (index) {
                          final item = items[index];
                          final isSelected = currentIndex == index;
                          return GestureDetector(
                            onTap: () {
                              bloc.add(
                                ChangeNavigationSelectedEvent(index: index),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    0,
                                    8,
                                    0,
                                    0,
                                  ),
                                  child: SvgPicture.asset(
                                    isSelected
                                        ? item.fillSvgPath
                                        : item.svgPath,
                                    width: 35,
                                    height: 35,
                                  ),
                                ),

                                Text(
                                  item.label,
                                  style: isSelected
                                      ? TextStyles.sf40014.copyWith(
                                          color: AppPalette.whiteLight,
                                        )
                                      : TextStyles.sf30014.copyWith(
                                          color: AppPalette.greySurface,
                                        ),
                                ),
                                const SizedBox(height: 4),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
