import 'package:tasaheel/features/employees/presentation/pages/employees_page.dart';
import 'package:tasaheel/features/documents/presentation/pages/documents_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasaheel/features/auth_receiver/presentation/pages/auth_receiver_page.dart';
import 'package:tasaheel/features/auth_sender/presentation/pages/auth_sender_page.dart';
import 'package:tasaheel/features/home/presentation/pages/home_page.dart';
import 'package:tasaheel/features/navigation/presentation/pages/navigation_page.dart';
import 'package:tasaheel/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:tasaheel/features/onboarding/presentation/pages/user_selection_page.dart';

import 'app_routes.dart';

final router = GoRouter(
  initialLocation: '/navigation',
  navigatorKey: GlobalNavigation.instance.navigatorKey,
  routes: [
    GoRoute(
      name: Names.employees,
      path: Routes.employees,
      builder: (context, state) => const EmployeesPage(),
    ),

    GoRoute(
      name: Names.documents,
      path: Routes.documents,
      builder: (context, state) => const DocumentsPage(),
    ),

    GoRoute(
      name: Names.navigation,
      path: Routes.navigation,
      builder: (context, state) => const NavigationPage(),
    ),

    GoRoute(
      name: Names.home,
      path: Routes.home,
      builder: (context, state) => const HomePage(),
    ),

    GoRoute(
      name: Names.auth_sender,
      path: Routes.auth_sender,
      builder: (context, state) => const AuthSenderPage(),
    ),

    GoRoute(
      name: Names.auth_receiver,
      path: Routes.auth_receiver,
      builder: (context, state) => const Auth_receiverPage(),
    ),

    // Onboarding Page
    GoRoute(
      name: Names.onboarding,
      path: Routes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
    //User Type Selection Page
    GoRoute(
      name: Names.selection,
      path: Routes.selection,
      builder: (context, state) => const UserSelectionPage(),
    ),
  ],
);

class GlobalNavigation {
  static final GlobalNavigation instance = GlobalNavigation._internal();
  GlobalNavigation._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
