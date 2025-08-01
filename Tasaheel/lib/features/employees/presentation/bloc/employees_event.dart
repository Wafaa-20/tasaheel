import 'package:equatable/equatable.dart';

sealed class EmployeesEvent extends Equatable {
  const EmployeesEvent();

  @override
  List<Object> get props => [];
}

final class ToggleSelection extends EmployeesEvent {
  final int employee;

  const ToggleSelection({required this.employee});
  @override
  List<Object> get props => [employee];
}

class ToggleSelectionMode extends EmployeesEvent {}

