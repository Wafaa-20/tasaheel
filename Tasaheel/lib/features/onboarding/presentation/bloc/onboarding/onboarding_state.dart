import 'package:equatable/equatable.dart';

enum UserType { sender, receiver }

sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingPageState extends OnboardingState {
  final int currentPage;
  final UserType selectedType;
  const OnboardingPageState({
    required this.currentPage,
    this.selectedType = UserType.sender,
  });
  @override
  List<Object> get props => [currentPage, selectedType];
}

final class OnboardingCompleted extends OnboardingState {}

// final class UserTypeSelectedState extends OnboardingState {
//   final UserType selectedType;

//   const UserTypeSelectedState({this.selectedType = UserType.sender});
//   @override
//   List<Object> get props => [selectedType];
// }
