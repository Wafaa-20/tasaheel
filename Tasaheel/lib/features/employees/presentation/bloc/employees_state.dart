import 'package:equatable/equatable.dart';

sealed class EmployeesState extends Equatable {
  const EmployeesState();

  @override
  List<Object> get props => [];
}

final class EmployeesInitial extends EmployeesState {}

final class EmployeesSelectedState extends EmployeesState {
  final Set<int> selectedIndices;
  final bool showSelectionUI;

  const EmployeesSelectedState({
    required this.selectedIndices,
    required this.showSelectionUI,
  });

  @override
  List<Object> get props => [selectedIndices, showSelectionUI];
}
