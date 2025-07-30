import 'package:tasaheel/core/services/local_storage.dart';
import 'package:tasaheel/features/onboarding/data/datasources/language_data_source.dart';
import 'package:tasaheel/features/onboarding/data/models/language_option_model.dart';
import 'package:tasaheel/features/onboarding/domain/repositories/language_repository.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  final LanguageDataSource dataSource;
  final LocalStorage storage;

  LanguageRepositoryImpl({required this.dataSource, required this.storage});
  static const _languageKey = 'selected_language';
  @override
  List<LanguageOptionModel> getLanguages() {
    return dataSource.languageData();
  }

  @override
  Future<void> saveSelectedLanguage(String localeCode) async {
    await storage.saveData(key: _languageKey, value: localeCode);
  }

  @override
  Future<String> getSavedLanguage() async {
    return await storage.getData(key: _languageKey) ?? 'ar';
  }
}
