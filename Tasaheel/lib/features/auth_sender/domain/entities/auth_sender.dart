import 'package:equatable/equatable.dart';

class Auth_sender extends Equatable {
  final String id;
  final String name;

  const Auth_sender({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
