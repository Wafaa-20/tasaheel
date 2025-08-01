import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_event.dart';
import 'package:tasaheel/features/employees/presentation/bloc/employees_state.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  final Set<int> selectedIndices = {};
  bool showSelectionUI = false;
  EmployeesBloc() : super(EmployeesInitial()) {
    on<EmployeesEvent>((event, emit) {});
    on<ToggleSelection>(selectEmployee);
    on<ToggleSelectionMode>(onToggleSelectionMode);
  }

  FutureOr<void> selectEmployee(
    ToggleSelection event,
    Emitter<EmployeesState> emit,
  ) {
    if (selectedIndices.contains(event.employee)) {
      selectedIndices.remove(event.employee);
    } else {
      selectedIndices.add(event.employee);
    }
    emit(
      EmployeesSelectedState(
        selectedIndices: {...selectedIndices},
        showSelectionUI: showSelectionUI,
      ),
    );
  }

  FutureOr<void> onToggleSelectionMode(
    ToggleSelectionMode event,
    Emitter<EmployeesState> emit,
  ) {
    showSelectionUI = !showSelectionUI;
    if (!showSelectionUI) selectedIndices.clear();
    emit(
      EmployeesSelectedState(
        selectedIndices: {...selectedIndices},
        showSelectionUI: showSelectionUI,
      ),
    );
  }
}
