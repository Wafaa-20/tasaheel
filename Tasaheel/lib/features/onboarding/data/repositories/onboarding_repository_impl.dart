import 'package:tasaheel/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:tasaheel/features/onboarding/data/models/onboarding_model.dart';
import 'package:tasaheel/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource dataSource;

  OnboardingRepositoryImpl({required this.dataSource});

  @override
  List<OnboardingModel> getOnboardingData() {
    return dataSource.onboardingData();
  }
  
}
