import 'package:equatable/equatable.dart';

sealed class AuthSenderEvent extends Equatable {
  const AuthSenderEvent();

  @override
  List<Object> get props => [];
}

class FocusChanged extends AuthSenderEvent {
  final String fieldKey;
  final bool isFocused;
  const FocusChanged({required this.fieldKey, required this.isFocused});

  @override
  List<Object> get props => [isFocused, fieldKey];
}

class ClearField extends AuthSenderEvent {
  final String fieldKey;

  const ClearField({required this.fieldKey});

  @override
  List<Object> get props => [fieldKey];
}
