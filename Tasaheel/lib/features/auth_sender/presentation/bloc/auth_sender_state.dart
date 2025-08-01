import 'package:equatable/equatable.dart';

sealed class AuthSenderState extends Equatable {
  const AuthSenderState();

  @override
  List<Object> get props => [];
}

final class AuthSenderInitial extends AuthSenderState {}

final class FocusState extends AuthSenderState {
  final String fieldKey;
  final bool isFocused;

  const FocusState({required this.isFocused, required this.fieldKey});
  @override
  List<Object> get props => [fieldKey, isFocused];
}
