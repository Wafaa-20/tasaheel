import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/core/widgets/button/custom_button.dart';
import 'package:tasaheel/core/widgets/button/custom_text_button.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_bloc.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_event.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_state.dart';
import 'package:tasaheel/features/employees/presentation/widgets/employee_card_widget.dart';
import 'package:tasaheel/features/navigation/presentation/pages/navigation_page.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeesBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<EmployeesBloc>();
          return Scaffold(
            appBar: AppBar(
              title: const Text(AppText.employees),
              actions: [
                CustomTextButton(
                  onPressed: () {
                    bloc.add(ToggleSelectionMode());
                  },
                  text: AppText.select,
                ),
              ],
            ),
            body: BlocBuilder<EmployeesBloc, EmployeesState>(
              builder: (context, state) {
                final selectedState = state is EmployeesSelectedState
                    ? state
                    : null;
                final showSelectionUI = selectedState?.showSelectionUI ?? false;
                return Column(
                  children: [
                    Flexible(child: EmployeeCardWidget(bloc: bloc)),

                    if (showSelectionUI)
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: CustomButton(
                          width: 282,
                          onPressed: () {
                            // تنفيذ الدفع
                          },
                          child: const Text("الدفع"),
                        ),
                      ),
                  ],
                );
              },
            ),
            bottomNavigationBar: BlocBuilder<EmployeesBloc, EmployeesState>(
              builder: (context, state) {
                final selectedState = state is EmployeesSelectedState
                    ? state
                    : null;
                final showSelectionUI = selectedState?.showSelectionUI ?? false;

                if (showSelectionUI) {
                  return const SizedBox();
                } // إخفاء الـ bottom nav
                return const NavigationPage(); // أو أي nav bar عندك
              },
            ),
          );
        },
      ),
    );
  }
}
