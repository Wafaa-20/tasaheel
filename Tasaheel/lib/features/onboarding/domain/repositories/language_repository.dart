import 'package:tasaheel/features/onboarding/data/models/language_option_model.dart';

abstract class LanguageRepository {
  List<LanguageOptionModel> getLanguages();
  Future<void> saveSelectedLanguage(String localeCode);
  Future<String> getSavedLanguage();
}
