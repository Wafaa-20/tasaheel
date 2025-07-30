import 'package:tasaheel/features/onboarding/data/models/onboarding_model.dart';

abstract class OnboardingRepository {
  List<OnboardingModel> getOnboardingData();
}
