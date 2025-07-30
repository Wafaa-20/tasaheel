import 'package:get_it/get_it.dart';
import 'package:tasaheel/core/services/local_storage.dart';
import 'package:tasaheel/features/onboarding/data/datasources/language_data_source.dart';
import 'package:tasaheel/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:tasaheel/features/onboarding/data/repositories/language_repository_impl.dart';
import 'package:tasaheel/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:tasaheel/features/onboarding/domain/repositories/language_repository.dart';
import 'package:tasaheel/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/language/language_cubit.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/onboarding/onboarding_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Register services

  //?Shared Preferences
  GetIt.I.registerSingletonAsync<LocalStorage>(() async {
    final localStorage = LocalStorage();
    await localStorage.init();
    return localStorage;
  });

  // Register data sources
  GetIt.I.registerLazySingleton<OnboardingLocalDataSource>(
    () => OnboardingLocalDataSource(),
  );
  GetIt.I.registerLazySingleton<LanguageDataSource>(() => LanguageDataSource());

  // Register repositories
  GetIt.I.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(dataSource: GetIt.I()),
  );
  GetIt.I.registerLazySingleton<LanguageRepository>(
    () => LanguageRepositoryImpl(dataSource: GetIt.I(), storage: GetIt.I()),
  );

  // Register blocs
  GetIt.I.registerFactory(() => OnboardingCubit(GetIt.I()));
  GetIt.I.registerFactory(() => LanguageCubit(GetIt.I<LanguageRepository>()));
}
