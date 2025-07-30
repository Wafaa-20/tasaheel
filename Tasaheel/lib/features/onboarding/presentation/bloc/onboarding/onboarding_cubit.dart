import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tasaheel/core/services/local_storage.dart';
import 'package:tasaheel/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:tasaheel/features/onboarding/presentation/bloc/onboarding/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepository onboardingRepo;

  final pageController = PageController();
  final getItData = GetIt.I.get<LocalStorage>();

  OnboardingCubit(this.onboardingRepo)
    : super(OnboardingPageState(currentPage: 0));
  void nextPage() {
    final next = (state as OnboardingPageState).currentPage + 1;
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    emit(OnboardingPageState(currentPage: next));
  }

  void previousPage() {
    final prev = (state as OnboardingPageState).currentPage - 1;
    pageController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    emit(OnboardingPageState(currentPage: prev));
  }

  void completeOnboarding() {
    getItData.saveData(key: 'isOnboardingVisited', value: true);
    emit(OnboardingCompleted());
  }
}
