import 'package:equatable/equatable.dart';

class Auth_receiver extends Equatable {
  final String id;
  final String name;

  const Auth_receiver({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
