import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/features/onboarding/data/models/language_option_model.dart';
import 'package:tasaheel/features/onboarding/domain/repositories/language_repository.dart';

class LanguageCubit extends Cubit<Locale> {
  final LanguageRepository languageRepo;
  LanguageCubit(this.languageRepo) : super(const Locale('ar'));

  /// تحميل اللغة من SharedPreferences
  Future<void> loadSavedLanguage() async {
    final savedCode = await languageRepo.getSavedLanguage();
    emit(Locale(savedCode));
  }

  /// تغيير اللغة وحفظها
  Future<void> changeLanguage(
    BuildContext context,
    LanguageOptionModel option,
  ) async {
    languageRepo.saveSelectedLanguage(option.localeCode);
    await context.setLocale(Locale(option.localeCode));
    emit(Locale(option.localeCode));
  }
}
