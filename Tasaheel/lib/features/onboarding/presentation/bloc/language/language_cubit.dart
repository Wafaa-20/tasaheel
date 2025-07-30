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
  Future<void> changeLanguage(LanguageOptionModel option) async {
    languageRepo.getLanguages();
    emit(Locale(option.localeCode));
  }
}
