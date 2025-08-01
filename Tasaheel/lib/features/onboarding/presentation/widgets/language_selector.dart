import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/core/text/text_styles.dart';
import 'package:tasaheel/core/themes/app_palette.dart';
import 'package:tasaheel/features/onboarding/data/models/language_option_model.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/language/language_cubit.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        final cubit = context.read<LanguageCubit>();
        final languages = cubit.languageRepo.getLanguages();
        final currentLocale = cubit.state;
        final selectedLanguage = languages.firstWhere(
          (lang) => lang.localeCode == currentLocale.languageCode,
          orElse: () => languages.first,
        );
        //!DropdownButton
        return Container(
          height: 41,
          width: 130,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: BoxBorder.all(color: AppPalette.greyLight2, width: 2),
          ),
          child: DropdownButton<LanguageOptionModel>(
            value: selectedLanguage,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (LanguageOptionModel? newLang) async {
              if (newLang != null) {
                await cubit.changeLanguage(context, newLang);
              }
            },
            padding: EdgeInsets.zero,
            underline: SizedBox.shrink(),
            isExpanded: false,
            menuWidth: 135,
            style: TextStyles.sf30016,

            items: languages.map((language) {
              //!DropdownMenuItem
              return DropdownMenuItem<LanguageOptionModel>(
                value: language,
                child: Row(
                  children: [
                    CountryFlag.fromCountryCode(
                      language.countryCode,
                      width: 21,
                      height: 21,
                      shape: const Circle(),
                    ),
                    SizedBox(width: 6),
                    Text(language.name),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
