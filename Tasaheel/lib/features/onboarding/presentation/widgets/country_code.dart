import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        return DropdownButton<LanguageOptionModel>(
          value: selectedLanguage,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: languages.map((language) {
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

          onChanged: (value) {},
        );
      },
    );
  }
}
