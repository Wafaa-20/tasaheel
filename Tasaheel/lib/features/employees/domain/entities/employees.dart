import 'package:equatable/equatable.dart';

class Employees extends Equatable {
  final String id;
  final String name;

  const Employees({required this.id, required this.name});

  @override
  List<Object> get props => [id, name];
}
