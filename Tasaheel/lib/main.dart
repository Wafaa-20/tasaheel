import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/language/language_cubit.dart';

import 'app.dart';
import 'core/dependency_injection/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await init();
  await GetIt.I.allReady();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
        Locale('ur'),
        Locale('bn'),
        Locale('id'),
        Locale('tl'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      child: BlocProvider(
        create: (_) => LanguageCubit(GetIt.I())..loadSavedLanguage(),
        child: const MyApp(),
      ),
    ),
  );
}
