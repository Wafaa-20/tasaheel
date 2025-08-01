import 'package:equatable/equatable.dart';

sealed class Auth_receiverState extends Equatable {
  const Auth_receiverState();

  @override
  List<Object> get props => [];
}

final class Auth_receiverInitial extends Auth_receiverState {}
