import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_event.dart';
import 'package:tasaheel/features/auth_sender/presentation/bloc/auth_sender_state.dart';

class AuthSenderBloc extends Bloc<AuthSenderEvent, AuthSenderState> {
  final phoneNumController = TextEditingController();
  final nationalIdController = TextEditingController();
  final dayController = TextEditingController();
  final monthController = TextEditingController();
  final yearController = TextEditingController();
  AuthSenderBloc() : super(AuthSenderInitial()) {
    on<AuthSenderEvent>((event, emit) {});
    on<FocusChanged>(focusChanged);
  }

  FutureOr<void> focusChanged(
    FocusChanged event,
    Emitter<AuthSenderState> emit,
  ) {
    emit(FocusState(isFocused: event.isFocused, fieldKey: event.fieldKey));
  }
}
