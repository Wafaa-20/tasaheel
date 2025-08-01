import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/core/widgets/custom_profile.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_bloc.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_event.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_state.dart';

class EmployeeCardWidget extends StatelessWidget {
  const EmployeeCardWidget({super.key, required this.bloc});
  final EmployeesBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeesBloc, EmployeesState>(
      builder: (context, state) {
        final selectedIndices = state is EmployeesSelectedState
            ? state.selectedIndices
            : <int>{};
        final showSelection = state is EmployeesSelectedState
            ? state.showSelectionUI
            : false;

        return ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            final bool isSelected = selectedIndices.contains(index);
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  bloc.add(ToggleSelection(employee: index));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  padding: EdgeInsets.zero,
                  height: 73,
                  width: 361,
                  decoration: BoxDecoration(
                    color: AppPalette.white,
                    border: isSelected
                        ? BoxBorder.all(width: 1, color: AppPalette.blue)
                        : null,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: AppPalette.whiteLight2,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(
                      'ياسمين ',
                      style: TextStyles.sf50016.copyWith(
                        color: AppPalette.greyPrimary,
                      ),
                    ),
                    subtitle: Text(
                      'عاملة منزلية',
                      style: TextStyles.sf40014.copyWith(
                        color: AppPalette.greyLight3,
                      ),
                    ),
                    leading: CustomProfile(),
                    trailing: showSelection
                        ? Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: AppPalette.greyLight4,
                              shape: BoxShape.circle,
                            ),
                            child: isSelected
                                ? Icon(
                                    Icons.circle,
                                    color: AppPalette.blue,
                                    size: 12,
                                  )
                                : SizedBox.shrink(),
                          )
                        : SizedBox.shrink(),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
