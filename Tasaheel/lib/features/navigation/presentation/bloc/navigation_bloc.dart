import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tasaheel/features/documents/presentation/pages/documents_page.dart';
import 'package:tasaheel/features/employees/presentation/pages/employees_page.dart';
import 'package:tasaheel/features/home/presentation/pages/home_page.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavEvent, NavState> {
  final List<Widget> pages = [HomePage(), EmployeesPage(), DocumentsPage()];

  NavigationBloc() : super(NavigationSelectedState(0)) {
    on<ChangeNavigationSelectedEvent>(_onPageChanged);
  }

  void _onPageChanged(
    ChangeNavigationSelectedEvent event,
    Emitter<NavState> emit,
  ) {
    emit(NavigationSelectedState(event.index));
  }
}
