import 'package:equatable/equatable.dart';

sealed class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

final class ChangeLanguageLoading extends LanguageState {}

final class ChangeLanguageSuccess extends LanguageState {
  final String language;

  const ChangeLanguageSuccess({required this.language});
  @override
  List<Object> get props => [language];
}

final class ChangeLanguageFailure extends LanguageState {
  final String message;

  const ChangeLanguageFailure({required this.message});
  @override
  List<Object> get props => [message];
}
