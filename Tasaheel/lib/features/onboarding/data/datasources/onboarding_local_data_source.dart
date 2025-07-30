import 'package:tasaheel/core/text/app_text.dart';
import 'package:tasaheel/features/onboarding/data/models/onboarding_model.dart';

class OnboardingLocalDataSource {
  //Onboarding Data
  List<OnboardingModel> onboardingData() {
    return [
      OnboardingModel(
        image: 'assets/image/onboarding1.png',
        title: AppText.onboardingTitle1,
        subTitle: AppText.onboardingSubTitle1,
      ),
      OnboardingModel(
        image: 'assets/image/onboarding2.png',
        title: AppText.onboardingTitle2,
        subTitle: AppText.onboardingSubTitle2,
      ),
      OnboardingModel(
        image: 'assets/image/onboarding3.png',
        title: AppText.onboardingTitle3,
        subTitle: AppText.onboardingSubTitle3,
      ),
    ];
  }
}
