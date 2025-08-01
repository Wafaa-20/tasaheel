import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasaheel/features/auth_receiver/presentation/bloc/auth_receiver_event.dart';
import 'package:tasaheel/features/auth_receiver/presentation/bloc/auth_receiver_state.dart';

class Auth_receiverBloc extends Bloc<Auth_receiverEvent, Auth_receiverState> {
  Auth_receiverBloc() : super(Auth_receiverInitial()) {
    on<Auth_receiverEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
