import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/features/onboarding/data/models/language_option_model.dart';

class LanguageDataSource {
  List<LanguageOptionModel> languageData() {
    return [
      LanguageOptionModel(
        name: AppText.language1,
        countryCode: AppText.countryCode1,
        localeCode: AppText.localeCode1,
      ),
      LanguageOptionModel(
        name: AppText.language2,
        countryCode: AppText.countryCode2,
        localeCode: AppText.localeCode2,
      ),
      LanguageOptionModel(
        name: AppText.language3,
        countryCode: AppText.countryCode3,
        localeCode: AppText.localeCode3,
      ),
      LanguageOptionModel(
        name: AppText.language4,
        countryCode: AppText.countryCode4,
        localeCode: AppText.localeCode4,
      ),
      LanguageOptionModel(
        name: AppText.language5,
        countryCode: AppText.countryCode5,
        localeCode: AppText.localeCode5,
      ),
      LanguageOptionModel(
        name: AppText.language6,
        countryCode: AppText.countryCode6,
        localeCode: AppText.localeCode6,
      ),
    ];
  }
}
